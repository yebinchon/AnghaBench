
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {scalar_t__ symbol; scalar_t__ repeat; scalar_t__ space; scalar_t__ prev_code_len; scalar_t__ repeat_code_len; int* next_symbol; int * table; int * code_length_histo; int * symbol_lists; } ;
struct TYPE_5__ {TYPE_2__ header; } ;
struct TYPE_7__ {TYPE_1__ arena; int br; } ;
typedef int HuffmanCode ;
typedef TYPE_2__ BrotliMetablockHeaderArena ;
typedef TYPE_3__ BrotliDecoderState ;
typedef int BrotliDecoderErrorCode ;
typedef int BrotliBitReader ;


 int BROTLI_DECODER_NEEDS_MORE_INPUT ;
 int BROTLI_DECODER_SUCCESS ;
 int BROTLI_HC_ADJUST_TABLE_INDEX (int const*,scalar_t__) ;
 scalar_t__ BROTLI_HC_FAST_LOAD_BITS (int const*) ;
 scalar_t__ BROTLI_HC_FAST_LOAD_VALUE (int const*) ;
 int BROTLI_HC_MARK_TABLE_FOR_FAST_LOAD (int const*) ;
 scalar_t__ BROTLI_HUFFMAN_MAX_CODE_LENGTH_CODE_LENGTH ;
 scalar_t__ BROTLI_REPEAT_PREVIOUS_CODE_LENGTH ;
 int BROTLI_SHORT_FILL_BIT_WINDOW_READ ;
 scalar_t__ BitMask (scalar_t__) ;
 int BrotliCheckInputAmount (int *,int ) ;
 int BrotliDropBits (int *,scalar_t__) ;
 int BrotliFillBitWindow16 (int *) ;
 scalar_t__ BrotliGetBitsUnmasked (int *) ;
 int BrotliWarmupBitReader (int *) ;
 int ProcessRepeatedCodeLength (scalar_t__,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int *,int *,int*) ;
 int ProcessSingleCodeLength (scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int *,int *,int*) ;

__attribute__((used)) static BrotliDecoderErrorCode ReadSymbolCodeLengths(
    uint32_t alphabet_size, BrotliDecoderState* s) {
  BrotliBitReader* br = &s->br;
  BrotliMetablockHeaderArena* h = &s->arena.header;
  uint32_t symbol = h->symbol;
  uint32_t repeat = h->repeat;
  uint32_t space = h->space;
  uint32_t prev_code_len = h->prev_code_len;
  uint32_t repeat_code_len = h->repeat_code_len;
  uint16_t* symbol_lists = h->symbol_lists;
  uint16_t* code_length_histo = h->code_length_histo;
  int* next_symbol = h->next_symbol;
  if (!BrotliWarmupBitReader(br)) {
    return BROTLI_DECODER_NEEDS_MORE_INPUT;
  }
  while (symbol < alphabet_size && space > 0) {
    const HuffmanCode* p = h->table;
    uint32_t code_len;
    BROTLI_HC_MARK_TABLE_FOR_FAST_LOAD(p);
    if (!BrotliCheckInputAmount(br, BROTLI_SHORT_FILL_BIT_WINDOW_READ)) {
      h->symbol = symbol;
      h->repeat = repeat;
      h->prev_code_len = prev_code_len;
      h->repeat_code_len = repeat_code_len;
      h->space = space;
      return BROTLI_DECODER_NEEDS_MORE_INPUT;
    }
    BrotliFillBitWindow16(br);
    BROTLI_HC_ADJUST_TABLE_INDEX(p, BrotliGetBitsUnmasked(br) &
        BitMask(BROTLI_HUFFMAN_MAX_CODE_LENGTH_CODE_LENGTH));
    BrotliDropBits(br, BROTLI_HC_FAST_LOAD_BITS(p));
    code_len = BROTLI_HC_FAST_LOAD_VALUE(p);
    if (code_len < BROTLI_REPEAT_PREVIOUS_CODE_LENGTH) {
      ProcessSingleCodeLength(code_len, &symbol, &repeat, &space,
          &prev_code_len, symbol_lists, code_length_histo, next_symbol);
    } else {
      uint32_t extra_bits =
          (code_len == BROTLI_REPEAT_PREVIOUS_CODE_LENGTH) ? 2 : 3;
      uint32_t repeat_delta =
          (uint32_t)BrotliGetBitsUnmasked(br) & BitMask(extra_bits);
      BrotliDropBits(br, extra_bits);
      ProcessRepeatedCodeLength(code_len, repeat_delta, alphabet_size,
          &symbol, &repeat, &space, &prev_code_len, &repeat_code_len,
          symbol_lists, code_length_histo, next_symbol);
    }
  }
  h->space = space;
  return BROTLI_DECODER_SUCCESS;
}
