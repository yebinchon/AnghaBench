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
struct proc {int p_nice; int /*<<< orphan*/  p_acflag; } ;
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int EACCES ; 
 int EPERM ; 
 int PRIO_MAX ; 
 int PRIO_MIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct proc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct proc*,struct proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct proc*) ; 
 int /*<<< orphan*/  FUNC6 (struct proc*) ; 
 int /*<<< orphan*/  FUNC7 (struct proc*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC9(struct proc *curp, struct proc *chgp, int n)
{
	int error = 0;
	kauth_cred_t ucred;
	kauth_cred_t my_cred;

	ucred = FUNC2(curp);
	my_cred = FUNC2(chgp);

	if (FUNC8(ucred, NULL) && FUNC0(ucred) &&
	    FUNC1(ucred) != FUNC1(my_cred) &&
	    FUNC0(ucred) != FUNC1(my_cred)) {
		error = EPERM;
		goto out;
	}
	if (n > PRIO_MAX)
		n = PRIO_MAX;
	if (n < PRIO_MIN)
		n = PRIO_MIN;
	if (n < chgp->p_nice && FUNC8(ucred, &curp->p_acflag)) {
		error = EACCES;
		goto out;
	}
#if CONFIG_MACF
	error = mac_proc_check_sched(curp, chgp);
	if (error) 
		goto out;
#endif
	FUNC5(chgp);
	chgp->p_nice = n;
	FUNC6(chgp);
	(void)FUNC7(chgp);
out:
	FUNC3(&ucred);
	FUNC3(&my_cred);
	return (error);
}