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
typedef  size_t uint8_t ;
typedef  size_t uint32_t ;
struct TYPE_6__ {size_t repeat; unsigned int space; size_t sub_loop_counter; size_t* code_length_code_lengths; int /*<<< orphan*/ * code_length_histo; int /*<<< orphan*/  substate_huffman; } ;
struct TYPE_5__ {TYPE_2__ header; } ;
struct TYPE_7__ {TYPE_1__ arena; int /*<<< orphan*/  br; } ;
typedef  TYPE_2__ BrotliMetablockHeaderArena ;
typedef  TYPE_3__ BrotliDecoderState ;
typedef  int /*<<< orphan*/  BrotliDecoderErrorCode ;
typedef  int /*<<< orphan*/  BrotliBitReader ;

/* Variables and functions */
 size_t BROTLI_CODE_LENGTH_CODES ; 
 int /*<<< orphan*/  BROTLI_DECODER_ERROR_FORMAT_CL_SPACE ; 
 int /*<<< orphan*/  BROTLI_DECODER_NEEDS_MORE_INPUT ; 
 int /*<<< orphan*/  BROTLI_DECODER_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t*,size_t const) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  BROTLI_STATE_HUFFMAN_COMPLEX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,size_t*) ; 
 size_t* kCodeLengthCodeOrder ; 
 size_t* kCodeLengthPrefixLength ; 
 size_t* kCodeLengthPrefixValue ; 

__attribute__((used)) static BrotliDecoderErrorCode FUNC7(BrotliDecoderState* s) {
  BrotliBitReader* br = &s->br;
  BrotliMetablockHeaderArena* h = &s->arena.header;
  uint32_t num_codes = h->repeat;
  unsigned space = h->space;
  uint32_t i = h->sub_loop_counter;
  for (; i < BROTLI_CODE_LENGTH_CODES; ++i) {
    const uint8_t code_len_idx = kCodeLengthCodeOrder[i];
    uint32_t ix;
    uint32_t v;
    if (FUNC2(!FUNC6(br, 4, &ix))) {
      uint32_t available_bits = FUNC4(br);
      if (available_bits != 0) {
        ix = FUNC5(br) & 0xF;
      } else {
        ix = 0;
      }
      if (kCodeLengthPrefixLength[ix] > available_bits) {
        h->sub_loop_counter = i;
        h->repeat = num_codes;
        h->space = space;
        h->substate_huffman = BROTLI_STATE_HUFFMAN_COMPLEX;
        return BROTLI_DECODER_NEEDS_MORE_INPUT;
      }
    }
    v = kCodeLengthPrefixValue[ix];
    FUNC3(br, kCodeLengthPrefixLength[ix]);
    h->code_length_code_lengths[code_len_idx] = (uint8_t)v;
    FUNC1(h->code_length_code_lengths, code_len_idx);
    if (v != 0) {
      space = space - (32U >> v);
      ++num_codes;
      ++h->code_length_histo[v];
      if (space - 1U >= 32U) {
        /* space is 0 or wrapped around. */
        break;
      }
    }
  }
  if (!(num_codes == 1 || space == 0)) {
    return FUNC0(BROTLI_DECODER_ERROR_FORMAT_CL_SPACE);
  }
  return BROTLI_DECODER_SUCCESS;
}