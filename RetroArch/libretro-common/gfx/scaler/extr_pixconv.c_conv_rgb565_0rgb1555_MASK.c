#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  __m128i ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  const FUNC4 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(void *output_, const void *input_,
      int width, int height,
      int out_stride, int in_stride)
{
   int h;
   const uint16_t *input = (const uint16_t*)input_;
   uint16_t *output = (uint16_t*)output_;

#if defined(__SSE2__)
   int max_width           = width - 7;
   const __m128i hi_mask   = FUNC3(0x7fe0);
   const __m128i lo_mask   = FUNC3(0x1f);
#endif

   for (h = 0; h < height;
         h++, output += out_stride >> 1, input += in_stride >> 1)
   {
      int w = 0;
#if defined(__SSE2__)
      for (; w < max_width; w += 8)
      {
         const __m128i in = FUNC1((const __m128i*)(input + w));
         __m128i hi = FUNC0(FUNC4(in, 1), hi_mask);
         __m128i lo = FUNC0(in, lo_mask);
         FUNC5((__m128i*)(output + w), FUNC2(hi, lo));
      }
#endif

      for (; w < width; w++)
      {
         uint16_t col = input[w];
         uint16_t hi  = (col >> 1) & 0x7fe0;
         uint16_t lo  = col & 0x1f;
         output[w]    = hi | lo;
      }
   }
}