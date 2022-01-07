
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * vec2_t ;
typedef int fft_t ;
struct TYPE_3__ {int imag; int real; } ;
typedef TYPE_1__ fft_complex_t ;
typedef unsigned int GLuint ;


 float M_PI ;
 unsigned int bitinverse (unsigned int,unsigned int) ;
 TYPE_1__ exp_imag (float) ;
 unsigned int vec2_packHalf2x16 (int ,int ) ;

void fft_build_params(fft_t *fft, GLuint *buffer,
      unsigned step, unsigned size)
{
   unsigned i, j;
   unsigned step_size = 1 << step;

   for (i = 0; i < size; i += step_size << 1)
   {
      for (j = i; j < i + step_size; j++)
      {
         vec2_t tmp;
         int s = j - i;
         float phase = -1.0f * (float)s / step_size;
         unsigned a = j;
         unsigned b = j + step_size;
         fft_complex_t twiddle = exp_imag(M_PI * phase);

         unsigned read_a = (step == 0) ? bitinverse(a, size) : a;
         unsigned read_b = (step == 0) ? bitinverse(b, size) : b;

         tmp[0] = twiddle.real;
         tmp[1] = twiddle.imag;

         buffer[2 * a + 0] = (read_a << 16) | read_b;
         buffer[2 * a + 1] = vec2_packHalf2x16(tmp[0], tmp[1]);
         buffer[2 * b + 0] = (read_a << 16) | read_b;
         buffer[2 * b + 1] = vec2_packHalf2x16(-tmp[0], -tmp[1]);
      }
   }
}
