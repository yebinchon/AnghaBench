
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float real; float imag; } ;
typedef TYPE_1__ fft_complex_t ;



__attribute__((used)) static void interleave_float(const unsigned *bitinverse,
      fft_complex_t *out, const float *in,
      unsigned samples, unsigned step)
{
   unsigned i;
   for (i = 0; i < samples; i++, in += step)
   {
      unsigned inv_i = bitinverse[i];
      out[inv_i].real = *in;
      out[inv_i].imag = 0.0f;
   }
}
