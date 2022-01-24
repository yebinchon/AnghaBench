#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int cpu_ldt; } ;

/* Variables and functions */
 int KERNEL_LDT ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(int selector)
{
	/*
	 * Avoid loading the LDT
	 * if we're setting the KERNEL LDT and it's already set.
	 */
	if (selector == KERNEL_LDT &&
	    FUNC0()->cpu_ldt == KERNEL_LDT)
		return;

	FUNC1(selector);
	FUNC0()->cpu_ldt = selector;
}