dictionary = ["below","down","go","going","horn","how",
  "howdy","it","i","low","own","part","partner","sit"]

def substrings(phrase, dictionary)
  dictionary.reduce({}) do |hash,substr|
    occurrences = phrase.downcase.scan(substr.downcase)
    hash[substr] = occurrences.length if occurrences.length > 0
    hash
  end
end

puts "substrings('Howdy partner, sit down! How's it going?', dictionary)"
print substrings("Howdy partner, sit down! How's it going?", dictionary)
puts