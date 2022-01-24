#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uthread_t ;
typedef  int /*<<< orphan*/  thread_t ;
typedef  scalar_t__ task_t ;
typedef  TYPE_2__* proc_t ;
typedef  int boolean_t ;
struct TYPE_16__ {int p_lflag; int /*<<< orphan*/  p_uthlist; scalar_t__ p_return_to_kernel_offset; scalar_t__ p_dispatchqueue_serialno_offset; scalar_t__ p_dispatchqueue_offset; scalar_t__ task; } ;
struct TYPE_15__ {scalar_t__ uu_siglist; int /*<<< orphan*/ * uu_exit_reason; int /*<<< orphan*/ * t_dtrace_scratch; scalar_t__ t_dtrace_resumepid; scalar_t__ t_dtrace_stop; scalar_t__ t_dtrace_sig; int /*<<< orphan*/  uu_vforkmask; int /*<<< orphan*/  uu_oldmask; int /*<<< orphan*/  uu_sigmask; int /*<<< orphan*/  uu_sigwait; } ;

/* Variables and functions */
 int P_LEXIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_2__* FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 int FUNC11 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__) ; 
 int FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uu_list ; 

proc_t
FUNC22(proc_t p, task_t old_task, task_t new_task, thread_t new_thread)
{
	int error = 0;
	boolean_t task_active;
	boolean_t proc_active;
	boolean_t thread_active;
	thread_t old_thread = FUNC4();

	/*
	 * Switch the task pointer of proc to new task.
	 * Before switching the task, wait for proc_refdrain.
	 * After the switch happens, the proc can disappear,
	 * take a ref before it disappears. Waiting for
	 * proc_refdrain in exec will block all other threads
	 * trying to take a proc ref, boost the current thread
	 * to avoid priority inversion.
	 */
	FUNC21(old_thread);
	p = FUNC8(p, TRUE);
	/* extra proc ref returned to the caller */

	FUNC3(FUNC6(new_thread) == new_task);
	task_active = FUNC15(new_task);

	/* Take the proc_translock to change the task ptr */
	FUNC7(p);
	proc_active = !(p->p_lflag & P_LEXIT);

	/* Check if the current thread is not aborted due to SIGKILL */
	thread_active = FUNC20(old_thread);

	/*
	 * Do not switch the task if the new task or proc is already terminated
	 * as a result of error in exec past point of no return
	 */
	if (proc_active && task_active && thread_active) {
		error = FUNC11(p, 1, 0);
		if (error == 0) {
			uthread_t new_uthread = FUNC5(new_thread);
			uthread_t old_uthread = FUNC5(FUNC4());

			/*
			 * bsd_info of old_task will get cleared in execve and posix_spawn
			 * after firing exec-success/error dtrace probe.
			 */
			p->task = new_task;

			/* Clear dispatchqueue and workloop ast offset */
			p->p_dispatchqueue_offset = 0;
			p->p_dispatchqueue_serialno_offset = 0;
			p->p_return_to_kernel_offset = 0;

			/* Copy the signal state, dtrace state and set bsd ast on new thread */
			FUNC2(new_thread);
			new_uthread->uu_siglist = old_uthread->uu_siglist;
			new_uthread->uu_sigwait = old_uthread->uu_sigwait;
			new_uthread->uu_sigmask = old_uthread->uu_sigmask;
			new_uthread->uu_oldmask = old_uthread->uu_oldmask;
			new_uthread->uu_vforkmask = old_uthread->uu_vforkmask;
			new_uthread->uu_exit_reason = old_uthread->uu_exit_reason;
#if CONFIG_DTRACE
			new_uthread->t_dtrace_sig = old_uthread->t_dtrace_sig;
			new_uthread->t_dtrace_stop = old_uthread->t_dtrace_stop;
			new_uthread->t_dtrace_resumepid = old_uthread->t_dtrace_resumepid;
			assert(new_uthread->t_dtrace_scratch == NULL);
			new_uthread->t_dtrace_scratch = old_uthread->t_dtrace_scratch;

			old_uthread->t_dtrace_sig = 0;
			old_uthread->t_dtrace_stop = 0;
			old_uthread->t_dtrace_resumepid = 0;
			old_uthread->t_dtrace_scratch = NULL;
#endif
			/* Copy the resource accounting info */
			FUNC19(new_thread, FUNC4());

			/* Clear the exit reason and signal state on old thread */
			old_uthread->uu_exit_reason = NULL;
			old_uthread->uu_siglist = 0;

			/* Add the new uthread to proc uthlist and remove the old one */
			FUNC0(&p->p_uthlist, new_uthread, uu_list);
			FUNC1(&p->p_uthlist, old_uthread, uu_list);

			FUNC16(old_task);
			FUNC13(new_task);

			FUNC14(new_task, old_task);

			FUNC10(p, 1);
		}
	}

	FUNC12(p);
	FUNC9(p);
	FUNC18(old_thread);

	if (error != 0 || !task_active || !proc_active || !thread_active) {
		FUNC17(new_task);
	}

	return p;
}