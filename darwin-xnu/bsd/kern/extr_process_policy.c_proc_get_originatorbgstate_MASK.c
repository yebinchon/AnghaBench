#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  thread_t ;
typedef  TYPE_1__* proc_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_3__ {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOATTR ; 
 int ESRCH ; 
 scalar_t__ KERN_INVALID_TASK ; 
 scalar_t__ KERN_INVALID_VALUE ; 
 scalar_t__ KERN_SUCCESS ; 
 int PROC_FLAG_APPLICATION ; 
 int /*<<< orphan*/  TASK_POLICY_DARWIN_BG ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(uint32_t *is_backgrounded)
{
	uint32_t bgstate;
	proc_t p = FUNC0();
	uint32_t flagsp = 0;
	kern_return_t kr;
	pid_t pid;
	int ret;
	thread_t thread = FUNC1();

	bgstate = FUNC3(thread, TASK_POLICY_DARWIN_BG);
	
	/* If current thread or task backgrounded, return background */
	if (bgstate) {
		*is_backgrounded = 1;
		return 0;
	}

	/* Check if current process app type is App, then return foreground */
	FUNC2(p->task, &flagsp);
	if ((flagsp & PROC_FLAG_APPLICATION) == PROC_FLAG_APPLICATION) {
		*is_backgrounded = 0;
		return 0;
	}

	/*
	 * Get the current voucher origin pid and it's bgstate.The pid
	 * returned here might not be valid or may have been recycled.
	 */
	kr = FUNC5(&pid);
	if (kr != KERN_SUCCESS) {
		if (kr == KERN_INVALID_TASK)
			return ESRCH;
		else if (kr == KERN_INVALID_VALUE)
			return ENOATTR;
		else
			return EINVAL;
	}

	ret = FUNC4(pid, is_backgrounded);
	return ret;
}