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
typedef  scalar_t__ uarb ;
typedef  int png_uint_32 ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int,int) ; 
 int FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static int
FUNC2(uarb num, int in_digits, png_uint_32 add)
   /* As above but this works with any 32-bit value and only does 'add' */
{
   if (in_digits > 0)
   {
      in_digits = FUNC0(num, in_digits, add & 0xffff);
      return FUNC0(num+1, in_digits-1, add >> 16)+1;
   }

   return FUNC1(num, add);
}