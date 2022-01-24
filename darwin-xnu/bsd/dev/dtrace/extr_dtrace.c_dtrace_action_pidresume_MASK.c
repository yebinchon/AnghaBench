#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uthread_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ t_dtrace_resumepid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_DTRACE_ILLOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ dtrace_destructive_disallow ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(uint64_t pid)
{
	if (dtrace_destructive_disallow)
		return;

	if (FUNC5(FUNC4()) == 0) {
		FUNC0(CPU_DTRACE_ILLOP);		
		return;
	}
        uthread_t uthread = (uthread_t)FUNC3(FUNC2());

	/*
	 * When the currently running process leaves the kernel, it attempts to
	 * task_resume the process (denoted by pid), if that pid appears to have
	 * been stopped by dtrace_action_stop().
	 * The currently running process has a pidresume() queue depth of 1 --
	 * subsequent invocations of the pidresume() action are ignored.
	 */	

	if (pid != 0 && uthread && uthread->t_dtrace_resumepid == 0) {
		uthread->t_dtrace_resumepid = pid;
		FUNC1(FUNC2());
	}
}