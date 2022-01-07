
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int size; int interleave_buffer; scalar_t__ phase_lut; int bitinverse_buffer; } ;
typedef TYPE_1__ fft_t ;
typedef int fft_complex_t ;


 int butterflies (int ,scalar_t__,int,unsigned int,unsigned int) ;
 int interleave_complex (int ,int ,int const*,unsigned int,int) ;
 int resolve_float (float*,int ,unsigned int,float,unsigned int) ;

void fft_process_inverse(fft_t *fft,
      float *out, const fft_complex_t *in, unsigned step)
{
   unsigned step_size;
   unsigned samples = fft->size;

   interleave_complex(fft->bitinverse_buffer, fft->interleave_buffer,
         in, samples, 1);

   for (step_size = 1; step_size < samples; step_size <<= 1)
   {
      butterflies(fft->interleave_buffer,
            fft->phase_lut + samples,
            1, step_size, samples);
   }

   resolve_float(out, fft->interleave_buffer, samples, 1.0f / samples, step);
}
