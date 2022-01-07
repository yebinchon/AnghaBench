
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_1; int member_0; } ;
typedef TYPE_1__ fft_complex_t ;


 int cos (double) ;
 int sin (double) ;

__attribute__((used)) static fft_complex_t exp_imag(double phase)
{
   fft_complex_t out = { cos(phase), sin(phase) };
   return out;
}
