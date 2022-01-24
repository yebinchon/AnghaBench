#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_10__ {int substate_context_map; int context_index; int max_run_length_prefix; int code; int /*<<< orphan*/  context_map_table; } ;
struct TYPE_9__ {TYPE_2__ header; } ;
struct TYPE_11__ {TYPE_1__ arena; int /*<<< orphan*/  br; } ;
typedef  TYPE_2__ BrotliMetablockHeaderArena ;
typedef  TYPE_3__ BrotliDecoderState ;
typedef  int /*<<< orphan*/  BrotliDecoderErrorCode ;
typedef  int /*<<< orphan*/  BrotliBitReader ;
typedef  int BROTLI_BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  BROTLI_DECODER_ERROR_ALLOC_CONTEXT_MAP ; 
 int /*<<< orphan*/  BROTLI_DECODER_ERROR_FORMAT_CONTEXT_MAP_REPEAT ; 
 int /*<<< orphan*/  BROTLI_DECODER_ERROR_UNREACHABLE ; 
 int /*<<< orphan*/  BROTLI_DECODER_NEEDS_MORE_INPUT ; 
 int /*<<< orphan*/  BROTLI_DECODER_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int BROTLI_FALSE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
#define  BROTLI_STATE_CONTEXT_MAP_DECODE 132 
#define  BROTLI_STATE_CONTEXT_MAP_HUFFMAN 131 
#define  BROTLI_STATE_CONTEXT_MAP_NONE 130 
#define  BROTLI_STATE_CONTEXT_MAP_READ_PREFIX 129 
#define  BROTLI_STATE_CONTEXT_MAP_TRANSFORM 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static BrotliDecoderErrorCode FUNC11(uint32_t context_map_size,
                                               uint32_t* num_htrees,
                                               uint8_t** context_map_arg,
                                               BrotliDecoderState* s) {
  BrotliBitReader* br = &s->br;
  BrotliDecoderErrorCode result = BROTLI_DECODER_SUCCESS;
  BrotliMetablockHeaderArena* h = &s->arena.header;

  switch ((int)h->substate_context_map) {
    case BROTLI_STATE_CONTEXT_MAP_NONE:
      result = FUNC6(s, br, num_htrees);
      if (result != BROTLI_DECODER_SUCCESS) {
        return result;
      }
      (*num_htrees)++;
      h->context_index = 0;
      FUNC2(context_map_size);
      FUNC2(*num_htrees);
      *context_map_arg =
          (uint8_t*)FUNC0(s, (size_t)context_map_size);
      if (*context_map_arg == 0) {
        return FUNC1(BROTLI_DECODER_ERROR_ALLOC_CONTEXT_MAP);
      }
      if (*num_htrees <= 1) {
        FUNC10(*context_map_arg, 0, (size_t)context_map_size);
        return BROTLI_DECODER_SUCCESS;
      }
      h->substate_context_map = BROTLI_STATE_CONTEXT_MAP_READ_PREFIX;
    /* Fall through. */

    case BROTLI_STATE_CONTEXT_MAP_READ_PREFIX: {
      uint32_t bits;
      /* In next stage ReadHuffmanCode uses at least 4 bits, so it is safe
         to peek 4 bits ahead. */
      if (!FUNC4(br, 5, &bits)) {
        return BROTLI_DECODER_NEEDS_MORE_INPUT;
      }
      if ((bits & 1) != 0) { /* Use RLE for zeros. */
        h->max_run_length_prefix = (bits >> 1) + 1;
        FUNC3(br, 5);
      } else {
        h->max_run_length_prefix = 0;
        FUNC3(br, 1);
      }
      FUNC2(h->max_run_length_prefix);
      h->substate_context_map = BROTLI_STATE_CONTEXT_MAP_HUFFMAN;
    }
    /* Fall through. */

    case BROTLI_STATE_CONTEXT_MAP_HUFFMAN: {
      uint32_t alphabet_size = *num_htrees + h->max_run_length_prefix;
      result = FUNC8(alphabet_size, alphabet_size,
                               h->context_map_table, NULL, s);
      if (result != BROTLI_DECODER_SUCCESS) return result;
      h->code = 0xFFFF;
      h->substate_context_map = BROTLI_STATE_CONTEXT_MAP_DECODE;
    }
    /* Fall through. */

    case BROTLI_STATE_CONTEXT_MAP_DECODE: {
      uint32_t context_index = h->context_index;
      uint32_t max_run_length_prefix = h->max_run_length_prefix;
      uint8_t* context_map = *context_map_arg;
      uint32_t code = h->code;
      BROTLI_BOOL skip_preamble = (code != 0xFFFF);
      while (context_index < context_map_size || skip_preamble) {
        if (!skip_preamble) {
          if (!FUNC9(h->context_map_table, br, &code)) {
            h->code = 0xFFFF;
            h->context_index = context_index;
            return BROTLI_DECODER_NEEDS_MORE_INPUT;
          }
          FUNC2(code);

          if (code == 0) {
            context_map[context_index++] = 0;
            continue;
          }
          if (code > max_run_length_prefix) {
            context_map[context_index++] =
                (uint8_t)(code - max_run_length_prefix);
            continue;
          }
        } else {
          skip_preamble = BROTLI_FALSE;
        }
        /* RLE sub-stage. */
        {
          uint32_t reps;
          if (!FUNC5(br, code, &reps)) {
            h->code = code;
            h->context_index = context_index;
            return BROTLI_DECODER_NEEDS_MORE_INPUT;
          }
          reps += 1U << code;
          FUNC2(reps);
          if (context_index + reps > context_map_size) {
            return
                FUNC1(BROTLI_DECODER_ERROR_FORMAT_CONTEXT_MAP_REPEAT);
          }
          do {
            context_map[context_index++] = 0;
          } while (--reps);
        }
      }
    }
    /* Fall through. */

    case BROTLI_STATE_CONTEXT_MAP_TRANSFORM: {
      uint32_t bits;
      if (!FUNC5(br, 1, &bits)) {
        h->substate_context_map = BROTLI_STATE_CONTEXT_MAP_TRANSFORM;
        return BROTLI_DECODER_NEEDS_MORE_INPUT;
      }
      if (bits != 0) {
        FUNC7(*context_map_arg, context_map_size, s);
      }
      h->substate_context_map = BROTLI_STATE_CONTEXT_MAP_NONE;
      return BROTLI_DECODER_SUCCESS;
    }

    default:
      return
          FUNC1(BROTLI_DECODER_ERROR_UNREACHABLE);
  }
}