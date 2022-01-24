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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int,int,int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 

__attribute__((used)) static u32 FUNC4(u32 top, u32 bottom)
{
   u32 r, g, b;

   r = FUNC3(top) + FUNC3(bottom);
   if (r > 0xFF) r = 0xFF;

   g = FUNC2(top) + FUNC2(bottom);
   if (g > 0xFF) g = 0xFF;

   b = FUNC1(top) + FUNC1(bottom);
   if (b > 0xFF) b = 0xFF;

   return FUNC0(0x3F, r, g, b);
}