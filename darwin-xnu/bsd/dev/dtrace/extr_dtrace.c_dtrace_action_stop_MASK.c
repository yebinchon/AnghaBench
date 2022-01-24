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
struct TYPE_2__ {int t_dtrace_stop; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ dtrace_destructive_disallow ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(void)
{
	if (dtrace_destructive_disallow)
		return;

        uthread_t uthread = (uthread_t)FUNC2(FUNC1());
	if (uthread) {
		/*
		 * The currently running process will be set to task_suspend
		 * when it next leaves the kernel.
		*/
		uthread->t_dtrace_stop = 1;
		FUNC0(FUNC1());
	}
}