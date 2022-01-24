#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ symbol; scalar_t__ space; int /*<<< orphan*/  next_symbol; int /*<<< orphan*/  code_length_histo; int /*<<< orphan*/  symbol_lists; int /*<<< orphan*/  repeat_code_len; int /*<<< orphan*/  prev_code_len; int /*<<< orphan*/  repeat; int /*<<< orphan*/ * table; } ;
struct TYPE_5__ {TYPE_2__ header; } ;
struct TYPE_7__ {TYPE_1__ arena; int /*<<< orphan*/  br; } ;
typedef  int /*<<< orphan*/  HuffmanCode ;
typedef  TYPE_2__ BrotliMetablockHeaderArena ;
typedef  TYPE_3__ BrotliDecoderState ;
typedef  int /*<<< orphan*/  BrotliDecoderErrorCode ;
typedef  int /*<<< orphan*/  BrotliBitReader ;
typedef  scalar_t__ BROTLI_BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BROTLI_DECODER_NEEDS_MORE_INPUT ; 
 int /*<<< orphan*/  BROTLI_DECODER_SUCCESS ; 
 scalar_t__ BROTLI_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ BROTLI_HUFFMAN_MAX_CODE_LENGTH_CODE_LENGTH ; 
 scalar_t__ BROTLI_REPEAT_PREVIOUS_CODE_LENGTH ; 
 scalar_t__ BROTLI_TRUE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,scalar_t__,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BrotliDecoderErrorCode FUNC11(
    uint32_t alphabet_size, BrotliDecoderState* s) {
  BrotliBitReader* br = &s->br;
  BrotliMetablockHeaderArena* h = &s->arena.header;
  BROTLI_BOOL get_byte = BROTLI_FALSE;
  while (h->symbol < alphabet_size && h->space > 0) {
    const HuffmanCode* p = h->table;
    uint32_t code_len;
    uint32_t available_bits;
    uint32_t bits = 0;
    FUNC3(p);
    if (get_byte && !FUNC8(br)) return BROTLI_DECODER_NEEDS_MORE_INPUT;
    get_byte = BROTLI_FALSE;
    available_bits = FUNC6(br);
    if (available_bits != 0) {
      bits = (uint32_t)FUNC7(br);
    }
    FUNC0(p,
        bits & FUNC4(BROTLI_HUFFMAN_MAX_CODE_LENGTH_CODE_LENGTH));
    if (FUNC1(p) > available_bits) {
      get_byte = BROTLI_TRUE;
      continue;
    }
    code_len = FUNC2(p);  /* code_len == 0..17 */
    if (code_len < BROTLI_REPEAT_PREVIOUS_CODE_LENGTH) {
      FUNC5(br, FUNC1(p));
      FUNC10(code_len, &h->symbol, &h->repeat, &h->space,
          &h->prev_code_len, h->symbol_lists, h->code_length_histo,
          h->next_symbol);
    } else {  /* code_len == 16..17, extra_bits == 2..3 */
      uint32_t extra_bits = code_len - 14U;
      uint32_t repeat_delta = (bits >> FUNC1(p)) &
          FUNC4(extra_bits);
      if (available_bits < FUNC1(p) + extra_bits) {
        get_byte = BROTLI_TRUE;
        continue;
      }
      FUNC5(br, FUNC1(p) + extra_bits);
      FUNC9(code_len, repeat_delta, alphabet_size,
          &h->symbol, &h->repeat, &h->space, &h->prev_code_len,
          &h->repeat_code_len, h->symbol_lists, h->code_length_histo,
          h->next_symbol);
    }
  }
  return BROTLI_DECODER_SUCCESS;
}