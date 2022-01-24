#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ task_inspect_t ;
typedef  TYPE_1__* ipc_port_t ;
struct TYPE_8__ {scalar_t__ ip_kobject; } ;

/* Variables and functions */
 scalar_t__ IKOT_TASK ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ TASK_INSPECT_NULL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

task_inspect_t
FUNC7(
	ipc_port_t		port)
{
	task_inspect_t task = TASK_INSPECT_NULL;

	if (FUNC0(port)) {
		FUNC4(port);

		if (FUNC2(port)	&&
		    FUNC3(port) == IKOT_TASK) {
			task = (task_inspect_t)port->ip_kobject;
			FUNC1(task != TASK_INSPECT_NULL);

			FUNC6(task);
		}

		FUNC5(port);
	}

	return (task);
}