
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int imag; int real; } ;
typedef TYPE_1__ fft_complex_t ;


 int cosf (float) ;
 int sinf (float) ;

__attribute__((used)) static fft_complex_t exp_imag(float phase)
{
   fft_complex_t out;
   out.real = cosf(phase);
   out.imag = sinf(phase);
   return out;
}
