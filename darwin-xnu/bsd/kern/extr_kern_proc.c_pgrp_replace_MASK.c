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
struct proc {int p_listflag; int /*<<< orphan*/  p_pgrpid; struct pgrp* p_pgrp; } ;
struct TYPE_2__ {scalar_t__ lh_first; } ;
struct pgrp {scalar_t__ pg_membercnt; int pg_listflags; TYPE_1__ pg_members; int /*<<< orphan*/  pg_id; int /*<<< orphan*/  pg_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PGRPID_DEAD ; 
 int PGRP_FLAG_DEAD ; 
 int PGRP_FLAG_TERMINATE ; 
 struct pgrp* PGRP_NULL ; 
 int P_LIST_INPGRP ; 
 int P_LIST_PGRPTRANS ; 
 int P_LIST_PGRPTRWAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  p_pglist ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC5 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC6 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC7 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  proc_list_mlock ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(struct proc * p, struct pgrp * newpg)
{
        struct pgrp * oldpg;



       FUNC8();

	while ((p->p_listflag & P_LIST_PGRPTRANS) == P_LIST_PGRPTRANS) {
		p->p_listflag |= P_LIST_PGRPTRWAIT;
		(void)FUNC2(&p->p_pgrpid, proc_list_mlock, 0, "proc_pgrp", 0);
	}

	p->p_listflag |= P_LIST_PGRPTRANS;

	oldpg = p->p_pgrp;
	if (oldpg == PGRP_NULL)
		FUNC3("pgrp_replace: oldpg NULL");
	oldpg->pg_refcount++;
#if __PROC_INTERNAL_DEBUG
        if ((p->p_listflag & P_LIST_INPGRP) == 0)
                panic("removing from pglist but no named ref\n");
#endif
        p->p_pgrpid = PGRPID_DEAD;
        p->p_listflag &= ~P_LIST_INPGRP;
        p->p_pgrp = NULL;
 
       FUNC9();

       FUNC6(oldpg);
       oldpg->pg_membercnt--;
       if (oldpg->pg_membercnt < 0)
                FUNC3("pgprp: -ve membercnt pgprp:%p p:%p\n",oldpg, p);
       FUNC1(p, p_pglist);
        if (oldpg->pg_members.lh_first == 0) {
                FUNC7(oldpg);
                FUNC5(oldpg);
        } else {
                FUNC7(oldpg);
                FUNC4(oldpg);
        }

        FUNC8();
        p->p_pgrp = newpg;
        p->p_pgrpid = newpg->pg_id;
        p->p_listflag |= P_LIST_INPGRP;
        /*
         * When pgrp is being freed , a process can still
         * request addition using setpgid from bash when 
         * login is terminated (login cycler) return ESRCH
         * Safe to hold lock due to refcount on pgrp 
         */
        if ((newpg->pg_listflags & (PGRP_FLAG_TERMINATE | PGRP_FLAG_DEAD)) == PGRP_FLAG_TERMINATE) {
                newpg->pg_listflags &= ~PGRP_FLAG_TERMINATE;
        }

        if ((newpg->pg_listflags & PGRP_FLAG_DEAD) == PGRP_FLAG_DEAD)
                FUNC3("pgrp_add : pgrp is dead adding process");
        FUNC9();

        FUNC6(newpg);
        newpg->pg_membercnt++;
	FUNC0(&newpg->pg_members, p, p_pglist);
        FUNC7(newpg);

        FUNC8();
        if (((newpg->pg_listflags & (PGRP_FLAG_TERMINATE | PGRP_FLAG_DEAD)) == PGRP_FLAG_TERMINATE) && (newpg->pg_membercnt != 0)) {
                newpg->pg_listflags &= ~PGRP_FLAG_TERMINATE;
        }

	p->p_listflag &= ~P_LIST_PGRPTRANS;
	if ((p->p_listflag & P_LIST_PGRPTRWAIT) == P_LIST_PGRPTRWAIT) {
		p->p_listflag &= ~P_LIST_PGRPTRWAIT;
		FUNC10(&p->p_pgrpid);
		
	}
        FUNC9();
}