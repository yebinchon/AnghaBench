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
typedef  int /*<<< orphan*/  user_addr_t ;
typedef  int /*<<< orphan*/  thread_qos_t ;
struct proc {int dummy; } ;
struct bsdthread_ctl_args {int cmd; scalar_t__ arg2; int /*<<< orphan*/  arg1; int /*<<< orphan*/  arg3; } ;
typedef  int /*<<< orphan*/  pthread_priority_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  enum workq_set_self_flags { ____Placeholder_workq_set_self_flags } workq_set_self_flags ;

/* Variables and functions */
#define  BSDTHREAD_CTL_QOS_DISPATCH_ASYNCHRONOUS_OVERRIDE_ADD 136 
#define  BSDTHREAD_CTL_QOS_DISPATCH_ASYNCHRONOUS_OVERRIDE_RESET 135 
#define  BSDTHREAD_CTL_QOS_MAX_PARALLELISM 134 
#define  BSDTHREAD_CTL_QOS_OVERRIDE_DISPATCH 133 
#define  BSDTHREAD_CTL_QOS_OVERRIDE_END 132 
#define  BSDTHREAD_CTL_QOS_OVERRIDE_RESET 131 
#define  BSDTHREAD_CTL_QOS_OVERRIDE_START 130 
#define  BSDTHREAD_CTL_SET_QOS 129 
#define  BSDTHREAD_CTL_SET_SELF 128 
 int EINVAL ; 
 int ENOTSUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned long,int*) ; 
 int FUNC3 (struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct proc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct proc*,int /*<<< orphan*/ ) ; 

int
FUNC8(struct proc *p, struct bsdthread_ctl_args *uap, int *retval)
{
	switch (uap->cmd) {
	case BSDTHREAD_CTL_QOS_OVERRIDE_START:
		return FUNC1(p, (mach_port_name_t)uap->arg1,
				(pthread_priority_t)uap->arg2, uap->arg3);
	case BSDTHREAD_CTL_QOS_OVERRIDE_END:
		FUNC0(uap->arg3);
		return FUNC3(p, (mach_port_name_t)uap->arg1,
				(user_addr_t)uap->arg2);

	case BSDTHREAD_CTL_QOS_OVERRIDE_DISPATCH:
		return FUNC6(p, (mach_port_name_t)uap->arg1,
				(pthread_priority_t)uap->arg2, uap->arg3);
	case BSDTHREAD_CTL_QOS_OVERRIDE_RESET:
		return FUNC7(p, FUNC5());

	case BSDTHREAD_CTL_SET_SELF:
		return FUNC4(p, FUNC5(),
				(pthread_priority_t)uap->arg1, (mach_port_name_t)uap->arg2,
				(enum workq_set_self_flags)uap->arg3);

	case BSDTHREAD_CTL_QOS_MAX_PARALLELISM:
		FUNC0(uap->arg3);
		return FUNC2((thread_qos_t)uap->arg1,
				(unsigned long)uap->arg2, retval);

	case BSDTHREAD_CTL_SET_QOS:
	case BSDTHREAD_CTL_QOS_DISPATCH_ASYNCHRONOUS_OVERRIDE_ADD:
	case BSDTHREAD_CTL_QOS_DISPATCH_ASYNCHRONOUS_OVERRIDE_RESET:
		/* no longer supported */
		return ENOTSUP;

	default:
		return EINVAL;
	}
}