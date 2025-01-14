require 'pry'

class String

  def sentence?
    self[-1] == '.'
  end

  def question?
    self[-1] == '?'
  end

  def exclamation?
    self[-1] == '!'
  end

  def count_sentences
    count = 0
    words = self.split(' ')
    words.each{ |word| count += 1 if word.sentence? || word.question? || word.exclamation?}
    count
  end
end