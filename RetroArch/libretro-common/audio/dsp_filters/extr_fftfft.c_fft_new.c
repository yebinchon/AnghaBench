
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int* bitinverse_buffer; unsigned int size; int * phase_lut; int * interleave_buffer; } ;
typedef TYPE_1__ fft_t ;
typedef int fft_complex_t ;


 int build_bitinverse (unsigned int*,unsigned int) ;
 int build_phase_lut (int *,unsigned int) ;
 scalar_t__ calloc (int,int) ;
 int fft_free (TYPE_1__*) ;

fft_t *fft_new(unsigned block_size_log2)
{
   unsigned size;
   fft_t *fft = (fft_t*)calloc(1, sizeof(*fft));
   if (!fft)
      return ((void*)0);

   size = 1 << block_size_log2;
   fft->interleave_buffer = (fft_complex_t*)calloc(size, sizeof(*fft->interleave_buffer));
   fft->bitinverse_buffer = (unsigned*)calloc(size, sizeof(*fft->bitinverse_buffer));
   fft->phase_lut = (fft_complex_t*)calloc(2 * size + 1, sizeof(*fft->phase_lut));

   if (!fft->interleave_buffer || !fft->bitinverse_buffer || !fft->phase_lut)
      goto error;

   fft->size = size;

   build_bitinverse(fft->bitinverse_buffer, block_size_log2);
   build_phase_lut(fft->phase_lut, size);
   return fft;

error:
   fft_free(fft);
   return ((void*)0);
}
