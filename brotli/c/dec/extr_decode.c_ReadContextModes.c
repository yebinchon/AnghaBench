
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int loop_counter; scalar_t__* context_modes; scalar_t__* num_block_types; int br; } ;
typedef TYPE_1__ BrotliDecoderState ;
typedef int BrotliDecoderErrorCode ;
typedef int BrotliBitReader ;


 int BROTLI_DECODER_NEEDS_MORE_INPUT ;
 int BROTLI_DECODER_SUCCESS ;
 int BROTLI_LOG_ARRAY_INDEX (scalar_t__*,int) ;
 int BrotliSafeReadBits (int *,int,scalar_t__*) ;

__attribute__((used)) static BrotliDecoderErrorCode ReadContextModes(BrotliDecoderState* s) {
  BrotliBitReader* br = &s->br;
  int i = s->loop_counter;

  while (i < (int)s->num_block_types[0]) {
    uint32_t bits;
    if (!BrotliSafeReadBits(br, 2, &bits)) {
      s->loop_counter = i;
      return BROTLI_DECODER_NEEDS_MORE_INPUT;
    }
    s->context_modes[i] = (uint8_t)bits;
    BROTLI_LOG_ARRAY_INDEX(s->context_modes, i);
    i++;
  }
  return BROTLI_DECODER_SUCCESS;
}
