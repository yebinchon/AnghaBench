
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; } ;
typedef TYPE_1__* Decoder ;


 scalar_t__ DECODER_RESET ;

__attribute__((used)) static int Decoder_SequencePending(Decoder decoder)
{
   return decoder->state != DECODER_RESET;
}
