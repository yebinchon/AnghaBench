
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int size; scalar_t__ phase_lut; int bitinverse_buffer; } ;
typedef TYPE_1__ fft_t ;
typedef int fft_complex_t ;


 int butterflies (int *,scalar_t__,int,unsigned int,unsigned int) ;
 int interleave_float (int ,int *,float const*,unsigned int,unsigned int) ;

void fft_process_forward(fft_t *fft,
      fft_complex_t *out, const float *in, unsigned step)
{
   unsigned step_size;
   unsigned samples = fft->size;
   interleave_float(fft->bitinverse_buffer, out, in, samples, step);

   for (step_size = 1; step_size < fft->size; step_size <<= 1)
   {
      butterflies(out,
            fft->phase_lut + samples,
            -1, step_size, samples);
   }
}
