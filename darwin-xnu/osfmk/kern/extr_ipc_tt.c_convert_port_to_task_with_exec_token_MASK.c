#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  TYPE_1__* task_t ;
typedef  TYPE_2__* ipc_port_t ;
struct TYPE_16__ {scalar_t__ ip_kobject; } ;
struct TYPE_15__ {int /*<<< orphan*/  exec_token; } ;

/* Variables and functions */
 scalar_t__ IKOT_TASK ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 TYPE_1__* TASK_NULL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

task_t
FUNC9(
	ipc_port_t		port,
	uint32_t		*exec_token)
{
	task_t		task = TASK_NULL;

	if (FUNC0(port)) {
		FUNC5(port);

		if (	FUNC3(port)					&&
				FUNC4(port) == IKOT_TASK		) {
			task_t ct = FUNC2();
			task = (task_t)port->ip_kobject;
			FUNC1(task != TASK_NULL);

			if (FUNC7(ct, task)) {
				FUNC6(port);
				return TASK_NULL;
			}

			if (exec_token) {
				*exec_token = task->exec_token;
			}
			FUNC8(task);
		}

		FUNC6(port);
	}

	return (task);
}