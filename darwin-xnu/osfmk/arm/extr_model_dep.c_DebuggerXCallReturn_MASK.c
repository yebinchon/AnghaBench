#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ debugger_active; } ;
typedef  TYPE_1__ cpu_data_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMB_ISH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ debugger_sync ; 
 TYPE_1__* FUNC1 () ; 
 scalar_t__ mp_kdp_trap ; 

void
FUNC2(
	void)
{
	cpu_data_t	*cpu_data_ptr = FUNC1();

	cpu_data_ptr->debugger_active--;
	if (cpu_data_ptr->debugger_active != 0)
		return;

	mp_kdp_trap = 0;
	debugger_sync = 0;

	/* Do we need a barrier here? */
	FUNC0(DMB_ISH);
}