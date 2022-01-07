
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int ContextLut ;
typedef int BROTLI_BOOL ;


 size_t BROTLI_CONTEXT (int,int,int ) ;
 int BROTLI_CONTEXT_LUT (int ) ;
 int BROTLI_FALSE ;
 int BROTLI_TRUE ;
 int BROTLI_UNUSED (int) ;
 int CONTEXT_UTF8 ;
 double ShannonEntropy (int*,int,size_t*) ;

__attribute__((used)) static BROTLI_BOOL ShouldUseComplexStaticContextMap(const uint8_t* input,
    size_t start_pos, size_t length, size_t mask, int quality, size_t size_hint,
    size_t* num_literal_contexts, const uint32_t** literal_context_map) {
  static const uint32_t kStaticContextMapComplexUTF8[64] = {
    11, 11, 12, 12,
    0, 0, 0, 0,
    1, 1, 9, 9,
    2, 2, 2, 2,
    1, 1, 1, 1,
    8, 3, 3, 3,
    1, 1, 1, 1,
    2, 2, 2, 2,
    8, 4, 4, 4,
    8, 7, 4, 4,
    8, 0, 0, 0,
    3, 3, 3, 3,
    5, 5, 10, 5,
    5, 5, 10, 5,
    6, 6, 6, 6,
    6, 6, 6, 6,
  };
  BROTLI_UNUSED(quality);

  if (size_hint < (1 << 20)) {
    return BROTLI_FALSE;
  } else {
    const size_t end_pos = start_pos + length;



    uint32_t combined_histo[32] = { 0 };
    uint32_t context_histo[13][32] = { { 0 } };
    uint32_t total = 0;
    double entropy[3];
    size_t dummy;
    size_t i;
    ContextLut utf8_lut = BROTLI_CONTEXT_LUT(CONTEXT_UTF8);
    for (; start_pos + 64 <= end_pos; start_pos += 4096) {
      const size_t stride_end_pos = start_pos + 64;
      uint8_t prev2 = input[start_pos & mask];
      uint8_t prev1 = input[(start_pos + 1) & mask];
      size_t pos;


      for (pos = start_pos + 2; pos < stride_end_pos; ++pos) {
        const uint8_t literal = input[pos & mask];
        const uint8_t context = (uint8_t)kStaticContextMapComplexUTF8[
            BROTLI_CONTEXT(prev1, prev2, utf8_lut)];
        ++total;
        ++combined_histo[literal >> 3];
        ++context_histo[context][literal >> 3];
        prev2 = prev1;
        prev1 = literal;
      }
    }
    entropy[1] = ShannonEntropy(combined_histo, 32, &dummy);
    entropy[2] = 0;
    for (i = 0; i < 13; ++i) {
      entropy[2] += ShannonEntropy(&context_histo[i][0], 32, &dummy);
    }
    entropy[0] = 1.0 / (double)total;
    entropy[1] *= entropy[0];
    entropy[2] *= entropy[0];







    if (entropy[2] > 3.0 || entropy[1] - entropy[2] < 0.2) {
      return BROTLI_FALSE;
    } else {
      *num_literal_contexts = 13;
      *literal_context_map = kStaticContextMapComplexUTF8;
      return BROTLI_TRUE;
    }
  }
}
