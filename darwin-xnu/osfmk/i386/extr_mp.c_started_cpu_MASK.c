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
struct TYPE_2__ {scalar_t__ target_cpu; } ;

/* Variables and functions */
 scalar_t__ TSC_sync_margin ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 TYPE_1__ start_info ; 
 scalar_t__ tsc_entry_barrier ; 
 scalar_t__ tsc_exit_barrier ; 
 scalar_t__ tsc_target ; 

__attribute__((used)) static void
FUNC3(void)
{
	/* Here on the started cpu with cpu_running set TRUE */

	if (TSC_sync_margin &&
	    start_info.target_cpu == FUNC1()) {
		/*
		 * I've just started-up, synchronize again with the starter cpu
		 * and then snap my TSC.
		 */
		tsc_target   = 0;
		FUNC0(&tsc_entry_barrier, 1);
		while (tsc_entry_barrier != 0)
			;	/* spin for starter and target at barrier */
		tsc_target = FUNC2();
		FUNC0(&tsc_exit_barrier, 1);
	}
}