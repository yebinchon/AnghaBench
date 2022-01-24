#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* proc_t ;
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/ * caddr_t ;
struct TYPE_23__ {int p_xstat; int si_status; int p_flag; char* p_comm; int /*<<< orphan*/  p_slock; int /*<<< orphan*/  p_dtrace_sprlock; int /*<<< orphan*/  p_fdmlock; int /*<<< orphan*/  p_ucred_mlock; int /*<<< orphan*/  p_mlock; int /*<<< orphan*/  p_listflag; int /*<<< orphan*/  p_stat; int /*<<< orphan*/  p_children; int /*<<< orphan*/  p_childrencnt; int /*<<< orphan*/  p_ucred; int /*<<< orphan*/  p_exit_reason; struct TYPE_23__* p_ru; int /*<<< orphan*/  ri; TYPE_1__* p_stats; int /*<<< orphan*/  ru; int /*<<< orphan*/  si_uid; int /*<<< orphan*/  si_code; int /*<<< orphan*/  p_pid; int /*<<< orphan*/  si_pid; scalar_t__ p_oppid; } ;
struct TYPE_22__ {int /*<<< orphan*/  ri_child; int /*<<< orphan*/  p_cru; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  CLD_CONTINUED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_PROC ; 
 int /*<<< orphan*/  M_ZOMBIE ; 
 int NOTE_EXIT ; 
 int NOTE_REAP ; 
 TYPE_2__* PROC_NULL ; 
 int /*<<< orphan*/  P_LIST_DEADPARENT ; 
 int /*<<< orphan*/  P_LIST_INHASH ; 
 int /*<<< orphan*/  P_LIST_WAITING ; 
 int P_NOCLDWAIT ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 TYPE_2__* initproc ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  nprocs ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  p_hash ; 
 int /*<<< orphan*/  p_list ; 
 int /*<<< orphan*/  p_sibling ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 int /*<<< orphan*/  proc_fdmlock_grp ; 
 TYPE_2__* FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  proc_lck_grp ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  proc_mlock_grp ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proc_slock_grp ; 
 int /*<<< orphan*/  proc_ucred_mlock_grp ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC28(proc_t parent, proc_t child, int deadparent, int reparentedtoinit, int locked, int droplock)
{
	proc_t trace_parent = PROC_NULL;	/* Traced parent process, if tracing */

	if (locked == 1)
		FUNC19();
	
	/*
	 * If we got the child via a ptrace 'attach',
	 * we need to give it back to the old parent.
	 *
	 * Exception: someone who has been reparented to launchd before being
	 * ptraced can simply be reaped, refer to radar 5677288
	 * 	p_oppid 		 -> ptraced
	 * 	trace_parent == initproc -> away from launchd
	 * 	reparentedtoinit	 -> came to launchd by reparenting
	 */
	if (child->p_oppid) {
		int knote_hint;
		pid_t oppid;

		FUNC20(child);
		oppid = child->p_oppid;
		child->p_oppid = 0;
		knote_hint = NOTE_EXIT | (child->p_xstat & 0xffff);
		FUNC23(child);

		if ((trace_parent = FUNC15(oppid))
			&& !((trace_parent == initproc) && reparentedtoinit)) {
				
			if (trace_parent != initproc) {
				/* 
				 * proc internal fileds  and p_ucred usage safe 
				 * here as child is dead and is not reaped or 
				 * reparented yet 
				 */
				FUNC20(trace_parent);
				trace_parent->si_pid = child->p_pid;
				trace_parent->si_status = child->p_xstat;
				trace_parent->si_code = CLD_CONTINUED;
				trace_parent->si_uid = FUNC6(child->p_ucred);
				FUNC23(trace_parent);
			}
			FUNC22(child, trace_parent, 1, 0);
			
			/* resend knote to original parent (and others) after reparenting */
			FUNC16(child, knote_hint);
			
			FUNC24(trace_parent, SIGCHLD);
			FUNC18();
			FUNC27((caddr_t)trace_parent);
			child->p_listflag &= ~P_LIST_WAITING;
			FUNC27(&child->p_stat);
			FUNC19();
			FUNC21(trace_parent);
			if ((locked == 1) && (droplock == 0))
				FUNC18();
			return (0);
		}

		/*
		 * If we can't reparent (e.g. the original parent exited while child was being debugged, or
		 * original parent is the same as the debugger currently exiting), we still need to satisfy
		 * the knote lifecycle for other observers on the system. While the debugger was attached,
		 * the NOTE_EXIT would not have been broadcast during initial child termination.
		 */
		FUNC16(child, knote_hint);

		if (trace_parent != PROC_NULL) {
			FUNC21(trace_parent);
		}
	}
	
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"
	FUNC16(child, NOTE_REAP);
#pragma clang diagnostic pop

	FUNC17(child);

	child->p_xstat = 0;
	if (child->p_ru) {
		FUNC20(parent);
#if 3839178
		/*
		 * If the parent is ignoring SIGCHLD, then POSIX requires
		 * us to not add the resource usage to the parent process -
		 * we are only going to hand it off to init to get reaped.
		 * We should contest the standard in this case on the basis
		 * of RLIMIT_CPU.
		 */
		if (!(parent->p_flag & P_NOCLDWAIT))
#endif	/* 3839178 */
			FUNC25(&parent->p_stats->p_cru, &child->p_ru->ru);
		FUNC26(&parent->p_stats->ri_child, &child->p_ru->ri);
		FUNC23(parent);
		FUNC1(child->p_ru, sizeof *child->p_ru, M_ZOMBIE);
		child->p_ru = NULL;
	} else {
		FUNC13("Warning : lost p_ru for %s\n", child->p_comm);
	}

	FUNC0(child);

	/*
	 * Decrement the count of procs running with this uid.
	 * p_ucred usage is safe here as it is an exited process.
	 * and refernce is dropped after these calls down below
	 * (locking protection is provided by list lock held in chgproccnt)
	 */
#if CONFIG_PERSONAS
	/*
	 * persona_proc_drop calls chgproccnt(-1) on the persona uid,
	 * and (+1) on the child->p_ucred uid
	 */
	persona_proc_drop(child);
#endif
	(void)FUNC5(FUNC6(child->p_ucred), -1);

	FUNC11(child->p_exit_reason);

	/*
	 * Free up credentials.
	 */
	if (FUNC2(child->p_ucred)) {
		FUNC7(&child->p_ucred);
	}

	/*  XXXX Note NOT SAFE TO USE p_ucred from this point onwards */

	/*
	 * Finally finished with old proc entry.
	 * Unlink it from its process group and free it.
	 */
	FUNC10(child);

	FUNC18();
	FUNC4(child, p_list);	/* off zombproc */
	parent->p_childrencnt--;
	FUNC4(child, p_sibling);
	/* If there are no more children wakeup parent */
	if ((deadparent != 0) && (FUNC3(&parent->p_children)))
		FUNC27((caddr_t)parent);	/* with list lock held */
	child->p_listflag &= ~P_LIST_WAITING;
	FUNC27(&child->p_stat);

	/* Take it out of process hash */
	FUNC4(child, p_hash);
	child->p_listflag &= ~P_LIST_INHASH;
	FUNC14(child);
	nprocs--;

	if (deadparent) {
		/*
		 * If a child zombie is being reaped because its parent
		 * is exiting, make sure we update the list flag
		 */
		child->p_listflag |= P_LIST_DEADPARENT;
	}

	FUNC19();

#if CONFIG_FINE_LOCK_GROUPS
	lck_mtx_destroy(&child->p_mlock, proc_mlock_grp);
	lck_mtx_destroy(&child->p_ucred_mlock, proc_ucred_mlock_grp);
	lck_mtx_destroy(&child->p_fdmlock, proc_fdmlock_grp);
#if CONFIG_DTRACE
	lck_mtx_destroy(&child->p_dtrace_sprlock, proc_lck_grp);
#endif
	lck_spin_destroy(&child->p_slock, proc_slock_grp);
#else /* CONFIG_FINE_LOCK_GROUPS */
	FUNC8(&child->p_mlock, proc_lck_grp);
	FUNC8(&child->p_ucred_mlock, proc_lck_grp);
	FUNC8(&child->p_fdmlock, proc_lck_grp);
#if CONFIG_DTRACE
	lck_mtx_destroy(&child->p_dtrace_sprlock, proc_lck_grp);
#endif
	FUNC9(&child->p_slock, proc_lck_grp);
#endif /* CONFIG_FINE_LOCK_GROUPS */

	FUNC1(child, sizeof *child, M_PROC);
	if ((locked == 1) && (droplock == 0))
		FUNC18();

	return (1);
}