
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;
typedef int BROTLI_BOOL ;


 int BROTLI_TRUE ;
 double const BitsEntropy (int *,int) ;
 double MIN_RATIO ;
 double SAMPLE_RATE ;
 int TO_BROTLI_BOOL (int) ;

__attribute__((used)) static BROTLI_BOOL ShouldCompress(
    const uint8_t* input, size_t input_size, size_t num_literals) {
  double corpus_size = (double)input_size;
  if (num_literals < MIN_RATIO * corpus_size) {
    return BROTLI_TRUE;
  } else {
    uint32_t literal_histo[256] = { 0 };
    const double max_total_bit_cost = corpus_size * 8 * MIN_RATIO / SAMPLE_RATE;
    size_t i;
    for (i = 0; i < input_size; i += SAMPLE_RATE) {
      ++literal_histo[input[i]];
    }
    return TO_BROTLI_BOOL(BitsEntropy(literal_histo, 256) < max_total_bit_cost);
  }
}
