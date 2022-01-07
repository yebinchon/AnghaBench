
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* phase_lut; struct TYPE_4__* bitinverse_buffer; struct TYPE_4__* interleave_buffer; } ;
typedef TYPE_1__ fft_t ;


 int free (TYPE_1__*) ;

void fft_free(fft_t *fft)
{
   if (!fft)
      return;

   free(fft->interleave_buffer);
   free(fft->bitinverse_buffer);
   free(fft->phase_lut);
   free(fft);
}
