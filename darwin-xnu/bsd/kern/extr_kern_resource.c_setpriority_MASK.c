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
struct setpriority_args {int which; int who; int prio; } ;
struct puser_nice_args {int prio; int who; int* foundp; int* errorp; struct proc* curp; } ;
struct proc {int dummy; } ;
struct ppgrp_nice_args {int prio; int* foundp; int* errorp; struct proc* curp; } ;
struct pgrp {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,...) ; 
 int EIDRM ; 
 int EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  PGRP_DROPREF ; 
 struct pgrp* PGRP_NULL ; 
#define  PRIO_DARWIN_GPU 134 
#define  PRIO_DARWIN_PROCESS 133 
#define  PRIO_DARWIN_ROLE 132 
#define  PRIO_DARWIN_THREAD 131 
#define  PRIO_PGRP 130 
#define  PRIO_PROCESS 129 
#define  PRIO_USER 128 
 int /*<<< orphan*/  PROC_ALLPROCLIST ; 
 struct proc* PROC_NULL ; 
 int /*<<< orphan*/  cmd ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct proc*,struct proc*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct proc*,struct proc*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  owner ; 
 struct pgrp* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct pgrp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ppgrp_donice_callback ; 
 struct proc* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct pgrp* FUNC11 (struct proc*) ; 
 int /*<<< orphan*/  FUNC12 (struct proc*) ; 
 int FUNC13 (struct proc*,struct proc*,int) ; 
 int /*<<< orphan*/  puser_donice_callback ; 
 int FUNC14 (struct proc*,struct proc*,int) ; 
 int /*<<< orphan*/  value32 ; 

int
FUNC15(struct proc *curp, struct setpriority_args *uap, int32_t *retval)
{
	struct proc *p;
	int found = 0, error = 0;
	int refheld = 0;

	FUNC0(cmd, uap->which);
	FUNC0(owner, uap->who, 0);
	FUNC0(value32, uap->prio);

	/* would also test (uap->who < 0), but id_t is unsigned */
	if (uap->who > 0x7fffffff)
		return (EINVAL);

	switch (uap->which) {

	case PRIO_PROCESS:
		if (uap->who == 0)
			p = curp;
		else {
			p = FUNC9(uap->who);
			if (p == 0)
				break;
			refheld = 1;
		}
		error = FUNC4(curp, p, uap->prio);
		found++;
		if (refheld != 0)
			FUNC12(p);
		break;

	case PRIO_PGRP: {
		struct pgrp *pg = PGRP_NULL;
		struct ppgrp_nice_args ppgrp;
		 
		if (uap->who == 0) {
			pg = FUNC11(curp);
		 } else if ((pg = FUNC7(uap->who)) == PGRP_NULL)
			break;

		ppgrp.curp = curp;
		ppgrp.prio = uap->prio;
		ppgrp.foundp = &found;
		ppgrp.errorp = &error;
		
		/* PGRP_DROPREF drops the reference on process group */
		FUNC8(pg, PGRP_DROPREF, ppgrp_donice_callback, (void *)&ppgrp, NULL, NULL);

		break;
	}

	case PRIO_USER: {
		struct puser_nice_args punice;

		if (uap->who == 0)
			uap->who = FUNC6(FUNC5());

		punice.curp = curp;
		punice.prio = uap->prio;
		punice.who = uap->who;
		punice.foundp = &found;
		error = 0;
		punice.errorp = &error;
		FUNC10(PROC_ALLPROCLIST, puser_donice_callback, (void *)&punice, NULL, NULL);

		break;
	}

	case PRIO_DARWIN_THREAD: {
		/* we currently only support the current thread */
		if (uap->who != 0)
			return (EINVAL);

		error = FUNC3(FUNC1(), uap->prio);
		found++;
		break;
	}

	case PRIO_DARWIN_PROCESS: {
		if (uap->who == 0)
			p = curp;
		else {
			p = FUNC9(uap->who);
			if (p == 0)
				break;
			refheld = 1;
		}

		error = FUNC2(curp, p, uap->prio);

		found++;
		if (refheld != 0)
			FUNC12(p);
		break;
	}

	case PRIO_DARWIN_GPU: {
		if (uap->who == 0)
			return (EINVAL);

		p = FUNC9(uap->who);
		if (p == PROC_NULL)
			break;

		error = FUNC14(curp, p, uap->prio);

		found++;
		FUNC12(p);
		break;
	}

	case PRIO_DARWIN_ROLE: {
		if (uap->who == 0) {
			p = curp;
		} else {
			p = FUNC9(uap->who);
			if (p == PROC_NULL)
				break;
			refheld = 1;
		}

		error = FUNC13(curp, p, uap->prio);

		found++;
		if (refheld != 0)
			FUNC12(p);
		break;
	}

	default:
		return (EINVAL);
	}
	if (found == 0)
		return (ESRCH);
	if (error == EIDRM) {
		*retval = -2;
		error = 0;
	}
	return (error);
}