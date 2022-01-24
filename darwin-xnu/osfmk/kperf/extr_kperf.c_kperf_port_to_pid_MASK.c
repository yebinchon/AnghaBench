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
typedef  scalar_t__ task_t ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TASK_NULL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 

int
FUNC4(mach_port_name_t portname)
{
	if (!FUNC0(portname)) {
		return -1;
	}

	task_t task = FUNC1(portname);
	if (task == TASK_NULL) {
		return -1;
	}
	pid_t pid = FUNC3(task);
	/* drop the ref taken by port_name_to_task */
	FUNC2(task);

	return pid;
}