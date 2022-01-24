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
struct proc {int dummy; } ;
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int EPERM ; 
#define  PRIO_DARWIN_BG 129 
#define  PRIO_DARWIN_NONUI 128 
 int /*<<< orphan*/  TASK_POLICY_DARWIN_BG ; 
 int TASK_POLICY_DISABLE ; 
 int TASK_POLICY_ENABLE ; 
 int TASK_POLICY_EXTERNAL ; 
 int TASK_POLICY_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct proc*,struct proc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct proc*) ; 

__attribute__((used)) static int
FUNC9(struct proc *curp, struct proc *targetp, int priority)
{
#if !CONFIG_MACF
#pragma unused(curp)
#endif
	int error = 0;
	kauth_cred_t ucred;
	kauth_cred_t target_cred;
	int external;
	int enable;

	ucred = FUNC0();
	target_cred = FUNC4(targetp);

	if (!FUNC3(ucred) && FUNC1(ucred) &&
		FUNC2(ucred) != FUNC2(target_cred) &&
		FUNC1(ucred) != FUNC2(target_cred))
	{
		error = EPERM;
		goto out;
	}

#if CONFIG_MACF
	error = mac_proc_check_sched(curp, targetp);
	if (error) 
		goto out;
#endif

	external = (curp == targetp) ? TASK_POLICY_INTERNAL : TASK_POLICY_EXTERNAL;

	switch (priority) {
		case PRIO_DARWIN_BG:
			enable = TASK_POLICY_ENABLE;
			break;
		case PRIO_DARWIN_NONUI:
			/* ignored for compatibility */
			goto out;
		default:
			/* TODO: EINVAL if priority != 0 */
			enable = TASK_POLICY_DISABLE;
			break;
	}

	FUNC7(FUNC8(targetp), external, TASK_POLICY_DARWIN_BG, enable);

out:
	FUNC5(&target_cred);
	return (error);
}