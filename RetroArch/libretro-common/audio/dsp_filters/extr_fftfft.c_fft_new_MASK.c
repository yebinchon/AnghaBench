#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int* bitinverse_buffer; unsigned int size; int /*<<< orphan*/ * phase_lut; int /*<<< orphan*/ * interleave_buffer; } ;
typedef  TYPE_1__ fft_t ;
typedef  int /*<<< orphan*/  fft_complex_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

fft_t *FUNC4(unsigned block_size_log2)
{
   unsigned size;
   fft_t *fft = (fft_t*)FUNC2(1, sizeof(*fft));
   if (!fft)
      return NULL;

   size                   = 1 << block_size_log2;
   fft->interleave_buffer = (fft_complex_t*)FUNC2(size, sizeof(*fft->interleave_buffer));
   fft->bitinverse_buffer = (unsigned*)FUNC2(size, sizeof(*fft->bitinverse_buffer));
   fft->phase_lut         = (fft_complex_t*)FUNC2(2 * size + 1, sizeof(*fft->phase_lut));

   if (!fft->interleave_buffer || !fft->bitinverse_buffer || !fft->phase_lut)
      goto error;

   fft->size = size;

   FUNC0(fft->bitinverse_buffer, block_size_log2);
   FUNC1(fft->phase_lut, size);
   return fft;

error:
   FUNC3(fft);
   return NULL;
}