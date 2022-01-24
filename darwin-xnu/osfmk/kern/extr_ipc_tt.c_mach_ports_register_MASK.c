#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  TYPE_1__* task_t ;
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  scalar_t__* mach_port_array_t ;
typedef  int mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  scalar_t__ ipc_port_t ;
struct TYPE_6__ {scalar_t__ itk_self; scalar_t__* itk_registered; } ;

/* Variables and functions */
 scalar_t__ IP_NULL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 TYPE_1__* TASK_NULL ; 
 int TASK_PORT_REGISTER_MAX ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC5(
	task_t			task,
	mach_port_array_t	memory,
	mach_msg_type_number_t	portsCnt)
{
	ipc_port_t ports[TASK_PORT_REGISTER_MAX];
	unsigned int i;

	if ((task == TASK_NULL) ||
	    (portsCnt > TASK_PORT_REGISTER_MAX) ||
	    (portsCnt && memory == NULL))
		return KERN_INVALID_ARGUMENT;

	/*
	 *	Pad the port rights with nulls.
	 */

	for (i = 0; i < portsCnt; i++)
		ports[i] = memory[i];
	for (; i < TASK_PORT_REGISTER_MAX; i++)
		ports[i] = IP_NULL;

	FUNC2(task);
	if (task->itk_self == IP_NULL) {
		FUNC3(task);
		return KERN_INVALID_ARGUMENT;
	}

	/*
	 *	Replace the old send rights with the new.
	 *	Release the old rights after unlocking.
	 */

	for (i = 0; i < TASK_PORT_REGISTER_MAX; i++) {
		ipc_port_t old;

		old = task->itk_registered[i];
		task->itk_registered[i] = ports[i];
		ports[i] = old;
	}

	FUNC3(task);

	for (i = 0; i < TASK_PORT_REGISTER_MAX; i++)
		if (FUNC0(ports[i]))
			FUNC1(ports[i]);

	/*
	 *	Now that the operation is known to be successful,
	 *	we can free the memory.
	 */

	if (portsCnt != 0)
		FUNC4(memory,
		      (vm_size_t) (portsCnt * sizeof(mach_port_t)));

	return KERN_SUCCESS;
}