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
typedef  int uint ;

/* Variables and functions */
 int DX ; 
 int FUNC0 () ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 

void FUNC3(void)
{
	uint ea = FUNC0();
	uint* r_dst = &DX;

	*r_dst = FUNC1(*r_dst) | ((FUNC2(ea) << 8) + FUNC2(ea + 2));
}