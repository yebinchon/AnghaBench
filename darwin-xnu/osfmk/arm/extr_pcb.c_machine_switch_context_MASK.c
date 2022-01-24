#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* thread_t ;
typedef  int /*<<< orphan*/  thread_continue_t ;
typedef  int /*<<< orphan*/  cpu_data_t ;
struct TYPE_15__ {int /*<<< orphan*/ * CpuDatap; } ;
struct TYPE_16__ {TYPE_2__ machine; TYPE_1__* map; } ;
struct TYPE_14__ {int /*<<< orphan*/  pmap; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_3__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_3__*) ; 

thread_t
FUNC7(
		       thread_t old,
		       thread_continue_t continuation,
		       thread_t new)
{
	thread_t retval;
	cpu_data_t	*cpu_data_ptr;

#define machine_switch_context_kprintf(x...)	/* kprintf("machine_switch_con
						 * text: " x) */

	cpu_data_ptr = FUNC2();
	if (old == new)
		FUNC5("machine_switch_context");

	FUNC3(old);

	FUNC6(new->map->pmap, new);

	new->machine.CpuDatap = cpu_data_ptr;

	machine_switch_context_kprintf("old= %x contination = %x new = %x\n", old, continuation, new);
	retval = FUNC0(old, continuation, new);
	FUNC1(retval != NULL);

	return retval;
}