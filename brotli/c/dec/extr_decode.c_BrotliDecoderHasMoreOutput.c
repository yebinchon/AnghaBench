
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ringbuffer; scalar_t__ error_code; } ;
typedef TYPE_1__ BrotliDecoderState ;
typedef int BROTLI_BOOL ;


 int BROTLI_FALSE ;
 int TO_BROTLI_BOOL (int) ;
 scalar_t__ UnwrittenBytes (TYPE_1__ const*,int ) ;

BROTLI_BOOL BrotliDecoderHasMoreOutput(const BrotliDecoderState* s) {

  if ((int)s->error_code < 0) {
    return BROTLI_FALSE;
  }
  return TO_BROTLI_BOOL(
      s->ringbuffer != 0 && UnwrittenBytes(s, BROTLI_FALSE) != 0);
}
