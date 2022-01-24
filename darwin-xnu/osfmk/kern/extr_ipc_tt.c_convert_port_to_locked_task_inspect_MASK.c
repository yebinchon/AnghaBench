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
typedef  int /*<<< orphan*/  task_t ;
typedef  scalar_t__ task_inspect_t ;
typedef  TYPE_1__* ipc_port_t ;
struct TYPE_8__ {scalar_t__ ip_kobject; } ;

/* Variables and functions */
 scalar_t__ IKOT_TASK ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ TASK_INSPECT_NULL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

task_inspect_t
FUNC8(ipc_port_t port)
{
        int try_failed_count = 0;

	while (FUNC0(port)) {
		task_inspect_t task;

		FUNC4(port);
		if (!FUNC2(port) || (FUNC3(port) != IKOT_TASK)) {
			FUNC5(port);
			return TASK_INSPECT_NULL;
		}
		task = (task_inspect_t)port->ip_kobject;
		FUNC1(task != TASK_INSPECT_NULL);
		/*
		 * Normal lock ordering puts task_lock() before ip_lock().
		 * Attempt out-of-order locking here.
		 */
		if (FUNC7((task_t)task)) {
			FUNC5(port);
			return task;
		}
		try_failed_count++;

		FUNC5(port);
		FUNC6(try_failed_count);
	}
	return TASK_INSPECT_NULL;
}