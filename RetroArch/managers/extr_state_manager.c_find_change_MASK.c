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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  __m128i ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static size_t FUNC4(const uint16_t *a, const uint16_t *b)
{
#if __SSE2__
   const __m128i *a128 = (const __m128i*)a;
   const __m128i *b128 = (const __m128i*)b;

   for (;;)
   {
      __m128i v0    = FUNC1(a128);
      __m128i v1    = FUNC1(b128);
      __m128i c     = FUNC0(v0, v1);
      uint32_t mask = FUNC2(c);

      if (mask != 0xffff) /* Something has changed, figure out where. */
      {
         size_t ret = (((uint8_t*)a128 - (uint8_t*)a) |
               (FUNC3(~mask))) >> 1;
         return ret | (a[ret] == b[ret]);
      }

      a128++;
      b128++;
   }
#else
   const uint16_t *a_org = a;
#ifdef NO_UNALIGNED_MEM
   while (((uintptr_t)a & (sizeof(size_t) - 1)) && *a == *b)
   {
      a++;
      b++;
   }
   if (*a == *b)
#endif
   {
      const size_t *a_big = (const size_t*)a;
      const size_t *b_big = (const size_t*)b;

      while (*a_big == *b_big)
      {
         a_big++;
         b_big++;
      }
      a = (const uint16_t*)a_big;
      b = (const uint16_t*)b_big;

      while (*a == *b)
      {
         a++;
         b++;
      }
   }
   return a - a_org;
#endif
}