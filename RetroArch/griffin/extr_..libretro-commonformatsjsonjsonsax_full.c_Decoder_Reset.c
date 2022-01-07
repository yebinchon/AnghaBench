
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bits; int state; } ;
typedef TYPE_1__* Decoder ;


 int DECODER_RESET ;

__attribute__((used)) static void Decoder_Reset(Decoder decoder)
{
   decoder->state = DECODER_RESET;
   decoder->bits = 0;
}
