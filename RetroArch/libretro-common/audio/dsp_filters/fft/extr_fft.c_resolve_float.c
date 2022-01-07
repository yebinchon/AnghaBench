
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float real; } ;
typedef TYPE_1__ fft_complex_t ;



__attribute__((used)) static void resolve_float(float *out, const fft_complex_t *in, unsigned samples,
      float gain, unsigned step)
{
   unsigned i;
   for (i = 0; i < samples; i++, in++, out += step)
      *out = gain * in->real;
}
