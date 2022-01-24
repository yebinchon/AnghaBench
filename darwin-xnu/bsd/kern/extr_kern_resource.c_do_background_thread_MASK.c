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
typedef  scalar_t__ thread_t ;
struct uthread {int uu_flag; } ;

/* Variables and functions */
 int EIDRM ; 
 int EPERM ; 
 int PRIO_DARWIN_BG ; 
 int /*<<< orphan*/  TASK_POLICY_DARWIN_BG ; 
 int TASK_POLICY_DISABLE ; 
 int TASK_POLICY_ENABLE ; 
 int TASK_POLICY_EXTERNAL ; 
 int TASK_POLICY_INTERNAL ; 
 int UT_VFORK ; 
 scalar_t__ FUNC0 () ; 
 struct uthread* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int
FUNC6(thread_t thread, int priority)
{
	struct uthread *ut;
	int enable, external;
	int rv = 0;

	ut = FUNC1(thread);

	/* Backgrounding is unsupported for threads in vfork */
	if ((ut->uu_flag & UT_VFORK) != 0)
		return(EPERM);

	/* Backgrounding is unsupported for workq threads */
	if (FUNC4(thread)) {
		return(EPERM);
	}

	/* Not allowed to combine QoS and DARWIN_BG, doing so strips the QoS */
	if (FUNC3(thread)) {
		FUNC5(thread);
		rv = EIDRM;
	}

	/* TODO: Fail if someone passes something besides 0 or PRIO_DARWIN_BG */
	enable   = (priority == PRIO_DARWIN_BG) ? TASK_POLICY_ENABLE   : TASK_POLICY_DISABLE;
	external = (FUNC0() == thread) ? TASK_POLICY_INTERNAL : TASK_POLICY_EXTERNAL;

	FUNC2(thread, external, TASK_POLICY_DARWIN_BG, enable);

	return rv;
}