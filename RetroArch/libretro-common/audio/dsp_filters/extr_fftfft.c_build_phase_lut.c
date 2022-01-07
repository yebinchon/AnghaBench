
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fft_complex_t ;


 int M_PI ;
 int exp_imag (int) ;

__attribute__((used)) static void build_phase_lut(fft_complex_t *out, int size)
{
   int i;
   out += size;
   for (i = -size; i <= size; i++)
      out[i] = exp_imag((M_PI * i) / size);
}
