
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ symbol; scalar_t__ space; int next_symbol; int code_length_histo; int symbol_lists; int repeat_code_len; int prev_code_len; int repeat; int * table; } ;
struct TYPE_5__ {TYPE_2__ header; } ;
struct TYPE_7__ {TYPE_1__ arena; int br; } ;
typedef int HuffmanCode ;
typedef TYPE_2__ BrotliMetablockHeaderArena ;
typedef TYPE_3__ BrotliDecoderState ;
typedef int BrotliDecoderErrorCode ;
typedef int BrotliBitReader ;
typedef scalar_t__ BROTLI_BOOL ;


 int BROTLI_DECODER_NEEDS_MORE_INPUT ;
 int BROTLI_DECODER_SUCCESS ;
 scalar_t__ BROTLI_FALSE ;
 int BROTLI_HC_ADJUST_TABLE_INDEX (int const*,scalar_t__) ;
 scalar_t__ BROTLI_HC_FAST_LOAD_BITS (int const*) ;
 scalar_t__ BROTLI_HC_FAST_LOAD_VALUE (int const*) ;
 int BROTLI_HC_MARK_TABLE_FOR_FAST_LOAD (int const*) ;
 scalar_t__ BROTLI_HUFFMAN_MAX_CODE_LENGTH_CODE_LENGTH ;
 scalar_t__ BROTLI_REPEAT_PREVIOUS_CODE_LENGTH ;
 scalar_t__ BROTLI_TRUE ;
 scalar_t__ BitMask (scalar_t__) ;
 int BrotliDropBits (int *,scalar_t__) ;
 scalar_t__ BrotliGetAvailableBits (int *) ;
 scalar_t__ BrotliGetBitsUnmasked (int *) ;
 int BrotliPullByte (int *) ;
 int ProcessRepeatedCodeLength (scalar_t__,scalar_t__,scalar_t__,scalar_t__*,int *,scalar_t__*,int *,int *,int ,int ,int ) ;
 int ProcessSingleCodeLength (scalar_t__,scalar_t__*,int *,scalar_t__*,int *,int ,int ,int ) ;

__attribute__((used)) static BrotliDecoderErrorCode SafeReadSymbolCodeLengths(
    uint32_t alphabet_size, BrotliDecoderState* s) {
  BrotliBitReader* br = &s->br;
  BrotliMetablockHeaderArena* h = &s->arena.header;
  BROTLI_BOOL get_byte = BROTLI_FALSE;
  while (h->symbol < alphabet_size && h->space > 0) {
    const HuffmanCode* p = h->table;
    uint32_t code_len;
    uint32_t available_bits;
    uint32_t bits = 0;
    BROTLI_HC_MARK_TABLE_FOR_FAST_LOAD(p);
    if (get_byte && !BrotliPullByte(br)) return BROTLI_DECODER_NEEDS_MORE_INPUT;
    get_byte = BROTLI_FALSE;
    available_bits = BrotliGetAvailableBits(br);
    if (available_bits != 0) {
      bits = (uint32_t)BrotliGetBitsUnmasked(br);
    }
    BROTLI_HC_ADJUST_TABLE_INDEX(p,
        bits & BitMask(BROTLI_HUFFMAN_MAX_CODE_LENGTH_CODE_LENGTH));
    if (BROTLI_HC_FAST_LOAD_BITS(p) > available_bits) {
      get_byte = BROTLI_TRUE;
      continue;
    }
    code_len = BROTLI_HC_FAST_LOAD_VALUE(p);
    if (code_len < BROTLI_REPEAT_PREVIOUS_CODE_LENGTH) {
      BrotliDropBits(br, BROTLI_HC_FAST_LOAD_BITS(p));
      ProcessSingleCodeLength(code_len, &h->symbol, &h->repeat, &h->space,
          &h->prev_code_len, h->symbol_lists, h->code_length_histo,
          h->next_symbol);
    } else {
      uint32_t extra_bits = code_len - 14U;
      uint32_t repeat_delta = (bits >> BROTLI_HC_FAST_LOAD_BITS(p)) &
          BitMask(extra_bits);
      if (available_bits < BROTLI_HC_FAST_LOAD_BITS(p) + extra_bits) {
        get_byte = BROTLI_TRUE;
        continue;
      }
      BrotliDropBits(br, BROTLI_HC_FAST_LOAD_BITS(p) + extra_bits);
      ProcessRepeatedCodeLength(code_len, repeat_delta, alphabet_size,
          &h->symbol, &h->repeat, &h->space, &h->prev_code_len,
          &h->repeat_code_len, h->symbol_lists, h->code_length_histo,
          h->next_symbol);
    }
  }
  return BROTLI_DECODER_SUCCESS;
}
