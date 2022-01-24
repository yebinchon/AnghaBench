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
typedef  int uint32_t ;
typedef  scalar_t__ proc_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
typedef  int /*<<< orphan*/  integer_t ;

/* Variables and functions */
 int ENOTSUP ; 
 int EPERM ; 
 int /*<<< orphan*/  PRIV_SETPRIORITY_DARWIN_ROLE ; 
 int PROC_FLAG_APPLICATION ; 
 int /*<<< orphan*/  TASK_POLICY_ATTRIBUTE ; 
 int /*<<< orphan*/  TASK_POLICY_ROLE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

__attribute__((used)) static int
FUNC12(proc_t curp, proc_t targetp, int priority)
{
	int error = 0;
	uint32_t flagsp = 0;

	kauth_cred_t ucred, target_cred;

	ucred = FUNC0();
	target_cred = FUNC4(targetp);

	if (!FUNC3(ucred) && FUNC1(ucred) &&
	    FUNC2(ucred)  != FUNC2(target_cred) &&
	    FUNC1(ucred) != FUNC2(target_cred)) {
		if (FUNC7(ucred, PRIV_SETPRIORITY_DARWIN_ROLE, 0) != 0) {
			error = EPERM;
			goto out;
		}
	}

	if (curp != targetp) {
#if CONFIG_MACF
		if ((error = mac_proc_check_sched(curp, targetp)))
			goto out;
#endif
	}

	FUNC9(FUNC11(targetp), &flagsp);
	if ((flagsp & PROC_FLAG_APPLICATION) != PROC_FLAG_APPLICATION) {
		error = ENOTSUP;
		goto out;
	}

	integer_t role = 0;

	if ((error = FUNC8(priority, &role)))
		goto out;

	FUNC10(FUNC11(targetp), TASK_POLICY_ATTRIBUTE,
	                     TASK_POLICY_ROLE, role);

out:
	FUNC5(&target_cred);
	return (error);
}