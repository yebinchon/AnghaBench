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
struct proc {int /*<<< orphan*/  p_listflag; int /*<<< orphan*/  p_pgrpid; struct pgrp* p_pgrp; } ;
struct pgrp {int pg_listflags; scalar_t__ pg_membercnt; int /*<<< orphan*/  pg_members; int /*<<< orphan*/  pg_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*,struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct proc*,int /*<<< orphan*/ ) ; 
 int PGRP_FLAG_DEAD ; 
 int PGRP_FLAG_TERMINATE ; 
 struct proc* PROC_NULL ; 
 int /*<<< orphan*/  P_LIST_INPGRP ; 
 int /*<<< orphan*/  p_pglist ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC4 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void
FUNC7(struct pgrp * pgrp, struct proc * parent, struct proc * child)
{
	FUNC5();
	child->p_pgrp = pgrp;
	child->p_pgrpid = pgrp->pg_id;
	child->p_listflag |= P_LIST_INPGRP;
	/*
	 * When pgrp is being freed , a process can still 
	 * request addition using setpgid from bash when 
 	 * login is terminated (login cycler) return ESRCH
	 * Safe to hold lock due to refcount on pgrp 
	 */
	if ((pgrp->pg_listflags & (PGRP_FLAG_TERMINATE | PGRP_FLAG_DEAD)) == PGRP_FLAG_TERMINATE) {
		pgrp->pg_listflags &= ~PGRP_FLAG_TERMINATE;	
	}

	if ((pgrp->pg_listflags & PGRP_FLAG_DEAD) == PGRP_FLAG_DEAD)
		FUNC2("pgrp_add : pgrp is dead adding process");
	FUNC6();

	FUNC3(pgrp);
	pgrp->pg_membercnt++;
	if ( parent != PROC_NULL) {
		FUNC0(parent, child, p_pglist);
	 }else {
		FUNC1(&pgrp->pg_members, child, p_pglist);
	}
	FUNC4(pgrp);

	FUNC5();
	if (((pgrp->pg_listflags & (PGRP_FLAG_TERMINATE | PGRP_FLAG_DEAD)) == PGRP_FLAG_TERMINATE) && (pgrp->pg_membercnt != 0)) {
		pgrp->pg_listflags &= ~PGRP_FLAG_TERMINATE;	
	}
	FUNC6();
}