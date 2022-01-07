
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ available_out_; } ;
typedef TYPE_1__ BrotliEncoderState ;
typedef int BROTLI_BOOL ;


 int TO_BROTLI_BOOL (int) ;

BROTLI_BOOL BrotliEncoderHasMoreOutput(BrotliEncoderState* s) {
  return TO_BROTLI_BOOL(s->available_out_ != 0);
}
