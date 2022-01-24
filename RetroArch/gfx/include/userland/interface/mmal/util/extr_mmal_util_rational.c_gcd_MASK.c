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
typedef  int int32_t ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static int32_t FUNC1(int32_t a, int32_t b)
{
   int shift;

   if (a == 0 || b == 0)
      return 1;

   a = FUNC0(a);
   b = FUNC0(b);
   for (shift = 0; !((a | b) & 0x01); shift++)
      a >>= 1, b >>= 1;

   while (a > 0)
   {
      while (!(a & 0x01))
         a >>= 1;
      while (!(b & 0x01))
         b >>= 1;
      if (a >= b)
         a = (a - b) >> 1;
      else
         b = (b - a) >> 1;
   }
   return b << shift;
}