
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ state; int canny_ringbuffer_allocation; int large_window; } ;
typedef TYPE_1__ BrotliDecoderState ;
typedef int BrotliDecoderParameter ;
typedef int BROTLI_BOOL ;




 int BROTLI_FALSE ;
 scalar_t__ BROTLI_STATE_UNINITED ;
 int BROTLI_TRUE ;
 int TO_BROTLI_BOOL (int) ;

BROTLI_BOOL BrotliDecoderSetParameter(
    BrotliDecoderState* state, BrotliDecoderParameter p, uint32_t value) {
  if (state->state != BROTLI_STATE_UNINITED) return BROTLI_FALSE;
  switch (p) {
    case 129:
      state->canny_ringbuffer_allocation = !!value ? 0 : 1;
      return BROTLI_TRUE;

    case 128:
      state->large_window = TO_BROTLI_BOOL(!!value);
      return BROTLI_TRUE;

    default: return BROTLI_FALSE;
  }
}
