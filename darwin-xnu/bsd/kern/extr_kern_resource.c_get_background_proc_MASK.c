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
 int /*<<< orphan*/  TASK_POLICY_DARWIN_BG ; 
 int TASK_POLICY_EXTERNAL ; 
 int TASK_POLICY_INTERNAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct proc *curp, struct proc *targetp, int *priority)
{
	int external = 0;
	int error = 0;
	kauth_cred_t ucred, target_cred;

	ucred = FUNC1();
	target_cred = FUNC5(targetp);

	if (!FUNC4(ucred) && FUNC2(ucred) &&
	    FUNC3(ucred) != FUNC3(target_cred) &&
	    FUNC2(ucred) != FUNC3(target_cred)) {
		error = EPERM;
		goto out;
	}

	external = (curp == targetp) ? TASK_POLICY_INTERNAL : TASK_POLICY_EXTERNAL;

	*priority = FUNC7(FUNC0(), external, TASK_POLICY_DARWIN_BG);

out:
	FUNC6(&target_cred);
	return (error);
}