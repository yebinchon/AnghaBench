
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fft_complex_t ;


 int fft_complex_add (int ,int ) ;
 int fft_complex_mul (int ,int ) ;
 int fft_complex_sub (int ,int ) ;

__attribute__((used)) static void butterfly(fft_complex_t *a, fft_complex_t *b, fft_complex_t mod)
{
   mod = fft_complex_mul(mod, *b);
   *b = fft_complex_sub(*a, mod);
   *a = fft_complex_add(*a, mod);
}
