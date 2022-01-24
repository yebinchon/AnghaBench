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
struct tty {struct session* t_session; struct session* t_pgrp; } ;
struct session {scalar_t__ pg_membercnt; scalar_t__ pg_refcount; int s_listflags; scalar_t__ s_count; int /*<<< orphan*/  pg_mlock; int /*<<< orphan*/  s_mlock; struct session* pg_session; int /*<<< orphan*/  s_ttypgrpid; int /*<<< orphan*/  pg_listflags; } ;
struct pgrp {scalar_t__ pg_membercnt; scalar_t__ pg_refcount; int s_listflags; scalar_t__ s_count; int /*<<< orphan*/  pg_mlock; int /*<<< orphan*/  s_mlock; struct pgrp* pg_session; int /*<<< orphan*/  s_ttypgrpid; int /*<<< orphan*/  pg_listflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct session*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_PGRP ; 
 int /*<<< orphan*/  M_SESSION ; 
 int /*<<< orphan*/  NO_PID ; 
 int /*<<< orphan*/  PGRP_FLAG_DEAD ; 
 int /*<<< orphan*/  PGRP_FLAG_TERMINATE ; 
 struct tty* FUNC2 (struct session*) ; 
 int S_LIST_DEAD ; 
 int S_LIST_TERM ; 
 struct tty* TTY_NULL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  pg_hash ; 
 int /*<<< orphan*/  FUNC5 (struct session*) ; 
 int /*<<< orphan*/  FUNC6 (struct session*) ; 
 int /*<<< orphan*/  proc_lck_grp ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  proc_mlock_grp ; 
 int /*<<< orphan*/  s_hash ; 
 int /*<<< orphan*/  FUNC9 (struct tty*) ; 
 int /*<<< orphan*/  FUNC10 (struct tty*) ; 

__attribute__((used)) static void
FUNC11(struct pgrp *pgrp)
{
	struct tty *ttyp;
	int emptypgrp  = 1;
	struct session *sessp;


	FUNC5(pgrp);
	if (pgrp->pg_membercnt != 0) {
		emptypgrp = 0;
	}
	FUNC6(pgrp);

	FUNC7();
	pgrp->pg_refcount--;
	if ((emptypgrp == 0) || (pgrp->pg_membercnt != 0)) {
		FUNC8();
		return;
	}

	pgrp->pg_listflags |= PGRP_FLAG_TERMINATE;
	
	if (pgrp->pg_refcount > 0) {
		FUNC8();
		return;
	}

	pgrp->pg_listflags |= PGRP_FLAG_DEAD;
	FUNC1(pgrp, pg_hash);

	FUNC8();
	
	ttyp = FUNC2(pgrp->pg_session);
	if (ttyp != TTY_NULL) {
		if (ttyp->t_pgrp == pgrp) {
			FUNC9(ttyp);
			/* Re-check after acquiring the lock */
			if (ttyp->t_pgrp == pgrp) {
				ttyp->t_pgrp = NULL;
				pgrp->pg_session->s_ttypgrpid = NO_PID;
			}
			FUNC10(ttyp);
		}
	}

	FUNC7();

	sessp = pgrp->pg_session;
	if ((sessp->s_listflags & (S_LIST_TERM | S_LIST_DEAD)) != 0)
			FUNC4("pg_deleteref: manipulating refs of already terminating session");
	if (--sessp->s_count == 0) {
		if ((sessp->s_listflags & (S_LIST_TERM | S_LIST_DEAD)) != 0)
			FUNC4("pg_deleteref: terminating already terminated session");
		sessp->s_listflags |= S_LIST_TERM;
		ttyp = FUNC2(sessp);
		FUNC1(sessp, s_hash);
		FUNC8();
		if (ttyp != TTY_NULL) {
			FUNC9(ttyp);
			if (ttyp->t_session == sessp)
				ttyp->t_session = NULL;
			FUNC10(ttyp);
		}
		FUNC7();
		sessp->s_listflags |= S_LIST_DEAD;
		if (sessp->s_count != 0)
			FUNC4("pg_deleteref: freeing session in use");	
		FUNC8();
#if CONFIG_FINE_LOCK_GROUPS
		lck_mtx_destroy(&sessp->s_mlock, proc_mlock_grp);
#else
		FUNC3(&sessp->s_mlock, proc_lck_grp);
#endif
		FUNC0(sessp, sizeof(struct session), M_SESSION);
	} else
		FUNC8();
#if CONFIG_FINE_LOCK_GROUPS
	lck_mtx_destroy(&pgrp->pg_mlock, proc_mlock_grp);
#else
	FUNC3(&pgrp->pg_mlock, proc_lck_grp);
#endif
	FUNC0(pgrp, sizeof(*pgrp), M_PGRP);
}