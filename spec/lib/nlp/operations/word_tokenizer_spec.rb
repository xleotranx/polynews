# frozen_string_literal: true

RSpec.describe NLP::Operations::WordTokenizer do
  it 'splits strings into single word tokens' do
    string = %(Jane said, "it isn't A.B.". There's a 2nd – $225 million sentence here\nwith more!!)

    result = described_class.call(string)

    expect(result).to eq ['Jane', 'said', 'it', "isn't", 'A.B', "There's",
                          'a', '2nd', '225', 'million', 'sentence', 'here', 'with', 'more']
  end
end
