
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fft_complex_t ;



__attribute__((used)) static void interleave_complex(const unsigned *bitinverse,
      fft_complex_t *out, const fft_complex_t *in,
      unsigned samples, unsigned step)
{
   unsigned i;
   for (i = 0; i < samples; i++, in += step)
      out[bitinverse[i]] = *in;
}
