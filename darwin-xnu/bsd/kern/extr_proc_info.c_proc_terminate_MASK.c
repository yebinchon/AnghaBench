#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* proc_t ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
typedef  int int32_t ;
struct TYPE_9__ {int /*<<< orphan*/  task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,...) ; 
 int EINVAL ; 
 int EPERM ; 
 int ESRCH ; 
 int /*<<< orphan*/  SIGKILL ; 
 int SIGTERM ; 
 int /*<<< orphan*/  TASK_POLICY_ATTRIBUTE ; 
 int /*<<< orphan*/  TASK_POLICY_ENABLE ; 
 int /*<<< orphan*/  TASK_POLICY_TERMINATED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  process ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  signum ; 

int
FUNC9(int pid, int32_t *retval)
{
	int error = 0;
	proc_t p;
	kauth_cred_t uc = FUNC3();
	int sig;

#if 0
	/* XXX: Check if these are necessary */
	AUDIT_ARG(pid, pid);
	AUDIT_ARG(signum, sig);
#endif

	if (pid <= 0 || retval == NULL) {
		return (EINVAL);
	}

	if ((p = FUNC5(pid)) == NULL) {
		return (ESRCH);
	}

#if 0
	/* XXX: Check if these are necessary */
	AUDIT_ARG(process, p);
#endif

	/* Check privileges; if SIGKILL can be issued, then SIGTERM is also OK */
	if (!FUNC1(FUNC2(), uc, p, SIGKILL)) {
		error = EPERM;
		goto out;
	}

	/* Not allowed to sudden terminate yourself */
	if (p == FUNC2()) {
		error = EPERM;
		goto out;
	}

#if CONFIG_MEMORYSTATUS
	/* Determine requisite signal to issue */
	sig = memorystatus_on_terminate(p);
#else
	sig = SIGTERM;
#endif

	FUNC7(p->task, TASK_POLICY_ATTRIBUTE,
	                     TASK_POLICY_TERMINATED, TASK_POLICY_ENABLE);

	FUNC8(p, sig);
	*retval = sig;

out:
	FUNC6(p);
	
	return error;
}