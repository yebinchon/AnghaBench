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
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FALSE ; 
#define  PRIO_DARWIN_GPU_ALLOW 129 
#define  PRIO_DARWIN_GPU_DENY 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct proc*,struct proc*) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct proc *curp, struct proc *targetp, int priority)
{
	int error = 0;
	kauth_cred_t ucred;
	kauth_cred_t target_cred;

	ucred = FUNC0();
	target_cred = FUNC4(targetp);

	/* TODO: Entitlement instead of uid check */

	if (!FUNC3(ucred) && FUNC1(ucred) &&
	    FUNC2(ucred)   != FUNC2(target_cred) &&
	    FUNC1(ucred)  != FUNC2(target_cred)) {
		error = EPERM;
		goto out;
	}

	if (curp == targetp) {
		error = EPERM;
		goto out;
	}

#if CONFIG_MACF
	error = mac_proc_check_sched(curp, targetp);
	if (error)
		goto out;
#endif

	switch (priority) {
		case PRIO_DARWIN_GPU_DENY:
			FUNC8(FUNC7(targetp), TRUE);
			break;
		case PRIO_DARWIN_GPU_ALLOW:
			FUNC8(FUNC7(targetp), FALSE);
			break;
		default:
			error = EINVAL;
			goto out;
	}

out:
	FUNC5(&target_cred);
	return (error);

}