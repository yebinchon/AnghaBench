#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct proc {int p_listflag; int /*<<< orphan*/ * p_pgrp; int /*<<< orphan*/  p_pgrpid; } ;
struct TYPE_2__ {scalar_t__ lh_first; } ;
struct pgrp {scalar_t__ pg_membercnt; TYPE_1__ pg_members; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRPID_DEAD ; 
 struct pgrp* PGRP_NULL ; 
 int P_LIST_INPGRP ; 
 int /*<<< orphan*/  p_pglist ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC3 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC4 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC5 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct pgrp* FUNC8 (struct proc*) ; 

__attribute__((used)) static void
FUNC9(struct proc * p)
{
	struct pgrp * pg;

	pg = FUNC8(p);

	FUNC6();
#if __PROC_INTERNAL_DEBUG
	if ((p->p_listflag & P_LIST_INPGRP) == 0)
		panic("removing from pglist but no named ref\n");
#endif
	p->p_pgrpid = PGRPID_DEAD;
	p->p_listflag &= ~P_LIST_INPGRP;
	p->p_pgrp = NULL;
	FUNC7();

	if (pg == PGRP_NULL)
		FUNC1("pgrp_remove: pg is NULL");
	FUNC4(pg);
	pg->pg_membercnt--;

	if (pg->pg_membercnt < 0)
		FUNC1("pgprp: -ve membercnt pgprp:%p p:%p\n",pg, p);

	FUNC0(p, p_pglist);
	if (pg->pg_members.lh_first == 0) {
		FUNC5(pg);
		FUNC3(pg);
	} else {
		FUNC5(pg);
		FUNC2(pg);
	}
}