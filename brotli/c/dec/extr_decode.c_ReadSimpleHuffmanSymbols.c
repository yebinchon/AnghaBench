
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_6__ {scalar_t__ sub_loop_counter; scalar_t__ symbol; scalar_t__* symbols_lists_array; int substate_huffman; } ;
struct TYPE_5__ {TYPE_2__ header; } ;
struct TYPE_7__ {TYPE_1__ arena; int br; } ;
typedef TYPE_2__ BrotliMetablockHeaderArena ;
typedef TYPE_3__ BrotliDecoderState ;
typedef int BrotliDecoderErrorCode ;
typedef int BrotliBitReader ;


 int BROTLI_DECODER_ERROR_FORMAT_SIMPLE_HUFFMAN_ALPHABET ;
 int BROTLI_DECODER_ERROR_FORMAT_SIMPLE_HUFFMAN_SAME ;
 int BROTLI_DECODER_NEEDS_MORE_INPUT ;
 int BROTLI_DECODER_SUCCESS ;
 int BROTLI_FAILURE (int ) ;
 int BROTLI_LOG_UINT (scalar_t__) ;
 scalar_t__ BROTLI_PREDICT_FALSE (int) ;
 int BROTLI_STATE_HUFFMAN_SIMPLE_READ ;
 int BrotliSafeReadBits (int *,scalar_t__,scalar_t__*) ;
 scalar_t__ Log2Floor (scalar_t__) ;

__attribute__((used)) static BrotliDecoderErrorCode ReadSimpleHuffmanSymbols(
    uint32_t alphabet_size_max, uint32_t alphabet_size_limit,
    BrotliDecoderState* s) {

  BrotliBitReader* br = &s->br;
  BrotliMetablockHeaderArena* h = &s->arena.header;
  uint32_t max_bits = Log2Floor(alphabet_size_max - 1);
  uint32_t i = h->sub_loop_counter;
  uint32_t num_symbols = h->symbol;
  while (i <= num_symbols) {
    uint32_t v;
    if (BROTLI_PREDICT_FALSE(!BrotliSafeReadBits(br, max_bits, &v))) {
      h->sub_loop_counter = i;
      h->substate_huffman = BROTLI_STATE_HUFFMAN_SIMPLE_READ;
      return BROTLI_DECODER_NEEDS_MORE_INPUT;
    }
    if (v >= alphabet_size_limit) {
      return
          BROTLI_FAILURE(BROTLI_DECODER_ERROR_FORMAT_SIMPLE_HUFFMAN_ALPHABET);
    }
    h->symbols_lists_array[i] = (uint16_t)v;
    BROTLI_LOG_UINT(h->symbols_lists_array[i]);
    ++i;
  }

  for (i = 0; i < num_symbols; ++i) {
    uint32_t k = i + 1;
    for (; k <= num_symbols; ++k) {
      if (h->symbols_lists_array[i] == h->symbols_lists_array[k]) {
        return BROTLI_FAILURE(BROTLI_DECODER_ERROR_FORMAT_SIMPLE_HUFFMAN_SAME);
      }
    }
  }

  return BROTLI_DECODER_SUCCESS;
}
