
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ state; } ;
typedef TYPE_1__ BrotliDecoderState ;
typedef int BROTLI_BOOL ;


 scalar_t__ BROTLI_STATE_DONE ;
 int BrotliDecoderHasMoreOutput (TYPE_1__ const*) ;
 scalar_t__ TO_BROTLI_BOOL (int) ;

BROTLI_BOOL BrotliDecoderIsFinished(const BrotliDecoderState* s) {
  return TO_BROTLI_BOOL(s->state == BROTLI_STATE_DONE) &&
      !BrotliDecoderHasMoreOutput(s);
}
