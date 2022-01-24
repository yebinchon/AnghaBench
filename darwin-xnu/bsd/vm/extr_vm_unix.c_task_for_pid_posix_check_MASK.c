#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uid_t ;
typedef  TYPE_1__* proc_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
struct TYPE_5__ {scalar_t__ p_stat; int p_flag; } ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ KERN_TFP_POLICY_DENY ; 
 int P_SUGID ; 
 scalar_t__ SZOMB ; 
 int TRUE ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ tfp_policy ; 

__attribute__((used)) static int
FUNC9(proc_t target)
{
	kauth_cred_t targetcred, mycred;
	uid_t myuid;
	int allowed; 

	/* No task_for_pid on bad targets */
	if (target->p_stat == SZOMB) {
		return FALSE;
	}

	mycred = FUNC1();
	myuid = FUNC4(mycred);

	/* If we're running as root, the check passes */
	if (FUNC6(mycred))
		return TRUE;

	/* We're allowed to get our own task port */
	if (target == FUNC0())
		return TRUE;

	/* 
	 * Under DENY, only root can get another proc's task port,
	 * so no more checks are needed.
	 */
	if (tfp_policy == KERN_TFP_POLICY_DENY) { 
		return FALSE;
	}

	targetcred = FUNC7(target);
	allowed = TRUE;

	/* Do target's ruid, euid, and saved uid match my euid? */
	if ((FUNC4(targetcred) != myuid) || 
			(FUNC2(targetcred) != myuid) ||
			(FUNC3(targetcred) != myuid)) {
		allowed = FALSE;
		goto out;
	}

	/* Are target's groups a subset of my groups? */
	if (FUNC5(targetcred, mycred, &allowed) ||
			allowed == 0) {
		allowed = FALSE;
		goto out;
	}

	/* Has target switched credentials? */
	if (target->p_flag & P_SUGID) {
		allowed = FALSE;
		goto out;
	}
	
out:
	FUNC8(&targetcred);
	return allowed;
}