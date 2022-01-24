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
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ u32 ;

/* Variables and functions */

u32 FUNC0(void)
{
   extern u32 __stack_bottom;

   uint32_t* stack_bottom_current = (u32*)__stack_bottom;
   while(*stack_bottom_current++ == 0xFCFCFCFC);
   stack_bottom_current--;

   return ((u32)stack_bottom_current - __stack_bottom);
}