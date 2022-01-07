
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fft_complex_t ;


 int butterfly (int *,int *,int const) ;

__attribute__((used)) static void butterflies(fft_complex_t *butterfly_buf,
      const fft_complex_t *phase_lut,
      int phase_dir, unsigned step_size, unsigned samples)
{
   unsigned i, j;
   for (i = 0; i < samples; i += step_size << 1)
   {
      int phase_step = (int)samples * phase_dir / (int)step_size;
      for (j = i; j < i + step_size; j++)
         butterfly(&butterfly_buf[j], &butterfly_buf[j + step_size],
               phase_lut[phase_step * (int)(j - i)]);
   }
}
