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
typedef  scalar_t__ proc_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/  TASK_POLICY_ATTRIBUTE ; 
 int /*<<< orphan*/  TASK_POLICY_ROLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int FUNC9 (int) ; 

__attribute__((used)) static int
FUNC10(proc_t curp, proc_t targetp, int *priority)
{
	int error = 0;
	int role = 0;

	kauth_cred_t ucred, target_cred;

	ucred = FUNC0();
	target_cred = FUNC4(targetp);

	if (!FUNC3(ucred) && FUNC1(ucred) &&
	    FUNC2(ucred)  != FUNC2(target_cred) &&
	    FUNC1(ucred) != FUNC2(target_cred)) {
		error = EPERM;
		goto out;
	}

	if (curp != targetp) {
#if CONFIG_MACF
		if ((error = mac_proc_check_sched(curp, targetp)))
			goto out;
#endif
	}

	role = FUNC7(FUNC8(targetp), TASK_POLICY_ATTRIBUTE, TASK_POLICY_ROLE);

	*priority = FUNC9(role);

out:
	FUNC5(&target_cred);
	return (error);
}