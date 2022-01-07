
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int distance_postfix_bits; int num_direct_distance_codes; } ;
struct TYPE_6__ {int quality; int lgwin; int lgblock; int size_hint; int stream_offset; TYPE_1__ dist; void* large_window; void* disable_literal_context_modeling; int mode; } ;
struct TYPE_7__ {TYPE_2__ params; scalar_t__ is_initialized_; } ;
typedef TYPE_3__ BrotliEncoderState ;
typedef int BrotliEncoderParameter ;
typedef int BrotliEncoderMode ;
typedef int BROTLI_BOOL ;


 int BROTLI_FALSE ;
 int BROTLI_TRUE ;
 void* TO_BROTLI_BOOL (int) ;

BROTLI_BOOL BrotliEncoderSetParameter(
    BrotliEncoderState* state, BrotliEncoderParameter p, uint32_t value) {

  if (state->is_initialized_) return BROTLI_FALSE;

  switch (p) {
    case 133:
      state->params.mode = (BrotliEncoderMode)value;
      return BROTLI_TRUE;

    case 130:
      state->params.quality = (int)value;
      return BROTLI_TRUE;

    case 134:
      state->params.lgwin = (int)value;
      return BROTLI_TRUE;

    case 135:
      state->params.lgblock = (int)value;
      return BROTLI_TRUE;

    case 137:
      if ((value != 0) && (value != 1)) return BROTLI_FALSE;
      state->params.disable_literal_context_modeling = TO_BROTLI_BOOL(!!value);
      return BROTLI_TRUE;

    case 129:
      state->params.size_hint = value;
      return BROTLI_TRUE;

    case 136:
      state->params.large_window = TO_BROTLI_BOOL(!!value);
      return BROTLI_TRUE;

    case 131:
      state->params.dist.distance_postfix_bits = value;
      return BROTLI_TRUE;

    case 132:
      state->params.dist.num_direct_distance_codes = value;
      return BROTLI_TRUE;

    case 128:
      if (value > (1u << 30)) return BROTLI_FALSE;
      state->params.stream_offset = value;
      return BROTLI_TRUE;

    default: return BROTLI_FALSE;
  }
}
