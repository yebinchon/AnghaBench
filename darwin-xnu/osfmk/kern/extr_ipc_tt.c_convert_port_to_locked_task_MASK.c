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
typedef  scalar_t__ task_t ;
typedef  TYPE_1__* ipc_port_t ;
struct TYPE_8__ {scalar_t__ ip_kobject; } ;

/* Variables and functions */
 scalar_t__ IKOT_TASK ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ TASK_NULL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 

task_t
FUNC10(ipc_port_t port)
{
	int try_failed_count = 0;

	while (FUNC0(port)) {
		task_t ct = FUNC2();
		task_t task;

		FUNC5(port);
		if (!FUNC3(port) || (FUNC4(port) != IKOT_TASK)) {
			FUNC6(port);
			return TASK_NULL;
		}
		task = (task_t) port->ip_kobject;
		FUNC1(task != TASK_NULL);

		if (FUNC8(ct, task)) {
			FUNC6(port);
			return TASK_NULL;
		}

		/*
		 * Normal lock ordering puts task_lock() before ip_lock().
		 * Attempt out-of-order locking here.
		 */
		if (FUNC9(task)) {
			FUNC6(port);
			return(task);
		}
		try_failed_count++;

		FUNC6(port);
		FUNC7(try_failed_count);
	}
	return TASK_NULL;
}