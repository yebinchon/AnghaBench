#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* proc_t ;
struct TYPE_15__ {struct TYPE_15__* p_stats; struct TYPE_15__* p_sigacts; int /*<<< orphan*/  p_rcall; int /*<<< orphan*/  p_ucred; int /*<<< orphan*/  p_slock; int /*<<< orphan*/  p_dtrace_sprlock; int /*<<< orphan*/  p_ucred_mlock; int /*<<< orphan*/  p_fdmlock; int /*<<< orphan*/  p_mlock; int /*<<< orphan*/ * p_textvp; scalar_t__ vm_shm; int /*<<< orphan*/ * p_limit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_PROC ; 
 int /*<<< orphan*/  M_PSTATS ; 
 int /*<<< orphan*/  M_SIGACTS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nprocs ; 
 int /*<<< orphan*/  p_hash ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  proc_fdmlock_grp ; 
 int /*<<< orphan*/  proc_lck_grp ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  proc_mlock_grp ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proc_slock_grp ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proc_ucred_mlock_grp ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

void
FUNC19(proc_t p)
{
#if CONFIG_PERSONAS
	persona_proc_drop(p);
#endif /* CONFIG_PERSONAS */

#if PSYNCH
	pth_proc_hashdelete(p);
#endif /* PSYNCH */

	/* We held signal and a transition locks; drop them */
	FUNC12(p, 0);
	FUNC13(p, 0);

	/*
	 * If we have our own copy of the resource limits structure, we
	 * need to free it.  If it's a shared copy, we need to drop our
	 * reference on it.
	 */
	FUNC9(p, 0);
	p->p_limit = NULL;

#if SYSV_SHM
	/* Need to drop references to the shared memory segment(s), if any */
	if (p->vm_shm) {
		/*
		 * Use shmexec(): we have no address space, so no mappings
		 *
		 * XXX Yes, the routine is badly named.
		 */
		shmexec(p);
	}
#endif

	/* Need to undo the effects of the fdcopy(), if any */
	FUNC3(p);

	/*
	 * Drop the reference on a text vnode pointer, if any
	 * XXX This code is broken in forkproc(); see <rdar://4256419>;
	 * XXX if anyone ever uses this field, we will be extremely unhappy.
	 */
	if (p->p_textvp) {
		FUNC18(p->p_textvp);
		p->p_textvp = NULL;
	}

	/* Stop the profiling clock */
	FUNC16(p);

	/* Update the audit session proc count */
	FUNC0(p);

#if CONFIG_FINE_LOCK_GROUPS
	lck_mtx_destroy(&p->p_mlock, proc_mlock_grp);
	lck_mtx_destroy(&p->p_fdmlock, proc_fdmlock_grp);
	lck_mtx_destroy(&p->p_ucred_mlock, proc_ucred_mlock_grp);
#if CONFIG_DTRACE
	lck_mtx_destroy(&p->p_dtrace_sprlock, proc_lck_grp);
#endif
	lck_spin_destroy(&p->p_slock, proc_slock_grp);
#else /* CONFIG_FINE_LOCK_GROUPS */
	FUNC5(&p->p_mlock, proc_lck_grp);
	FUNC5(&p->p_fdmlock, proc_lck_grp);
	FUNC5(&p->p_ucred_mlock, proc_lck_grp);
#if CONFIG_DTRACE
	lck_mtx_destroy(&p->p_dtrace_sprlock, proc_lck_grp);
#endif
	FUNC6(&p->p_slock, proc_lck_grp);
#endif /* CONFIG_FINE_LOCK_GROUPS */

	/* Release the credential reference */
	FUNC4(&p->p_ucred);

	FUNC10();
	/* Decrement the count of processes in the system */
	nprocs--;

	/* Take it out of process hash */
	FUNC2(p, p_hash);

	FUNC11();

	FUNC17(p->p_rcall);

	/* Free allocated memory */
	FUNC1(p->p_sigacts, sizeof *p->p_sigacts, M_SIGACTS);
	p->p_sigacts = NULL;
	FUNC1(p->p_stats, sizeof *p->p_stats, M_PSTATS);
	p->p_stats = NULL;

	FUNC8(p);
	FUNC1(p, sizeof *p, M_PROC);
}