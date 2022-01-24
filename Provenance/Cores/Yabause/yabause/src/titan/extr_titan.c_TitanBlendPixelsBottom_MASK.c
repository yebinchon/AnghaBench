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
typedef  int u8 ;
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int,int,int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 

__attribute__((used)) static u32 FUNC5(u32 top, u32 bottom)
{
   u8 alpha, ralpha, tr, tg, tb, br, bg, bb;

   if ((top & 0x80000000) == 0) return top;

   alpha = (FUNC1(bottom) << 2) + 3;
   ralpha = 0xFF - alpha;

   tr = (FUNC4(top) * alpha) / 0xFF;
   tg = (FUNC3(top) * alpha) / 0xFF;
   tb = (FUNC2(top) * alpha) / 0xFF;

   br = (FUNC4(bottom) * ralpha) / 0xFF;
   bg = (FUNC3(bottom) * ralpha) / 0xFF;
   bb = (FUNC2(bottom) * ralpha) / 0xFF;

   return FUNC0(FUNC1(top), tr + br, tg + bg, tb + bb);
}