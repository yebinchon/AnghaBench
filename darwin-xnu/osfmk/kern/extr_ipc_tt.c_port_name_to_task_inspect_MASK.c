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
typedef  int /*<<< orphan*/  task_inspect_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_MSG_TYPE_COPY_SEND ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INSPECT_NULL ; 
 int /*<<< orphan*/  TASK_NULL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

task_inspect_t
FUNC6(
	mach_port_name_t name)
{
	ipc_port_t kern_port;
	kern_return_t kr;
	task_inspect_t ti = TASK_INSPECT_NULL;

	if (FUNC1(name)) {
		kr = FUNC4(FUNC3(), name,
		                       MACH_MSG_TYPE_COPY_SEND,
		                       (ipc_object_t *)&kern_port);
		if (kr != KERN_SUCCESS)
			return TASK_NULL;

		ti = FUNC2(kern_port);

		if (FUNC0(kern_port))
			FUNC5(kern_port);
	}
	return ti;
}