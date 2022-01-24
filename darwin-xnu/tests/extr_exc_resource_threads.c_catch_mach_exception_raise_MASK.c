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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  int /*<<< orphan*/  mach_exception_data_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  exception_type_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXC_CORPSE_NOTIFY ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sync_sema ; 

kern_return_t
FUNC5(mach_port_t exception_port,
                           mach_port_t thread,
                           mach_port_t task,
                           exception_type_t exception,
                           mach_exception_data_t code,
                           mach_msg_type_number_t code_count)
{
#pragma unused(exception_port, thread, task, code, code_count)
	pid_t pid;
	FUNC4(task, &pid);
	FUNC0(exception, EXC_CORPSE_NOTIFY, "exception type");
	FUNC1(FUNC3(pid, SIGKILL), "kill");
	FUNC2(sync_sema);
	return KERN_SUCCESS;
}