def madlibs(story)
  repeated = {}
  no_more_blanks = false

  story.gsub!(/\({2}(\w+):*\w* *(\w*)\){2}/) do |fill_in|
    fill_in = fill_in[2...-2]

    if fill_in.include?(":")
      category = fill_in[0...fill_in.index(":")]
      puts "Please enter #{fill_in[fill_in.index(":")+1..-1]}"
      fill_in = gets.chomp
      repeated[category] = fill_in

    elsif repeated[fill_in]
      repeated[fill_in]

    else
      puts "Please enter #{fill_in}"
      gets.chomp
    end
  end

  puts story

end

story = "Our favorite language is ((gem:a gemstone)). We think ((gem)) is better than ((a gemstone))."

madlibs(story)