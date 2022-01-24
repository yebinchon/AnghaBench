#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  thread_continue_t ;
typedef  TYPE_2__* task_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  mach_exception_data_type_t ;
typedef  int /*<<< orphan*/  event_t ;
struct TYPE_27__ {int /*<<< orphan*/  active_thread_count; scalar_t__ corpse_info; int /*<<< orphan*/ * bsd_info; } ;
struct TYPE_26__ {int sched_flags; scalar_t__ depress_timer_active; scalar_t__ wait_timer_active; scalar_t__ reserved_stack; scalar_t__ promotions; scalar_t__ was_promoted_on_wakeup; scalar_t__ rwlock_count; int /*<<< orphan*/ * waiting_for_mutex; int /*<<< orphan*/  state; int /*<<< orphan*/  wait_timer; scalar_t__ wait_timer_is_set; int /*<<< orphan*/  uthread; TYPE_2__* task; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXC_RESOURCE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,long,long,...) ; 
 int MAXTHREADNAMESIZE ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 int TH_SFLAG_DEPRESSED_MASK ; 
 int TH_SFLAG_EXEC_PROMOTED ; 
 int TH_SFLAG_PROMOTED ; 
 int TH_SFLAG_RW_PROMOTED ; 
 int TH_SFLAG_WAITQ_PROMOTED ; 
 int /*<<< orphan*/  TH_TERMINATE ; 
 int /*<<< orphan*/  TRACE_DATA_THREAD_TERMINATE_PID ; 
 int /*<<< orphan*/  TRACE_STRING_PROC_EXIT ; 
 int /*<<< orphan*/  TRACE_STRING_THREADNAME_PREV ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,long*,long*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,long*,long*,long*,long*) ; 
 scalar_t__ kdebug_enable ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  lwp__exit ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (char*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ thread_terminate_continue ; 
 int /*<<< orphan*/  FUNC34 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC36 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_1__*) ; 

void
FUNC40(void)
{
	thread_t		thread = FUNC6();
	task_t			task;
	int threadcnt;

	FUNC13(thread);

	FUNC0(lwp__exit);

	FUNC30(thread);

	FUNC9(thread);

	FUNC31(thread);

	FUNC33(thread, NULL);

	spl_t s = FUNC17();
	FUNC28(thread);

	FUNC27(thread);

	FUNC34(thread);
	FUNC18(s);

#if CONFIG_EMBEDDED
	thead_remove_taskwatch(thread);
#endif /* CONFIG_EMBEDDED */

	FUNC39(thread);

	FUNC30(thread);

	FUNC32(thread);

	FUNC31(thread);

	FUNC3(thread, NULL);

	if (kdebug_enable && FUNC5(thread->uthread)) {
		char threadname[MAXTHREADNAMESIZE];
		FUNC4(thread->uthread, threadname);
		FUNC12(TRACE_STRING_THREADNAME_PREV, threadname);
	}

	task = thread->task;
	FUNC37(task, thread->uthread, task->bsd_info);

	if (kdebug_enable && task->bsd_info && !FUNC22(task)) {
		/* trace out pid before we sign off */
		long dbg_arg1 = 0;
		long dbg_arg2 = 0;

		FUNC10(thread->task->bsd_info, &dbg_arg1, &dbg_arg2);
		FUNC1(TRACE_DATA_THREAD_TERMINATE_PID, dbg_arg1, dbg_arg2);
	}

	/*
	 * After this subtraction, this thread should never access
	 * task->bsd_info unless it got 0 back from the hw_atomic_sub.  It
	 * could be racing with other threads to be the last thread in the
	 * process, and the last thread in the process will tear down the proc
	 * structure and zero-out task->bsd_info.
	 */
	threadcnt = FUNC8(&task->active_thread_count, 1);

	/*
	 * If we are the last thread to terminate and the task is
	 * associated with a BSD process, perform BSD process exit.
	 */
	if (threadcnt == 0 && task->bsd_info != NULL && !FUNC22(task)) {
		mach_exception_data_type_t subcode = 0;
		if (kdebug_enable) {
			/* since we're the last thread in this process, trace out the command name too */
			long args[4] = {};
			FUNC11(thread->task->bsd_info, &args[0], &args[1], &args[2], &args[3]);
			FUNC1(TRACE_STRING_PROC_EXIT, args[0], args[1], args[2], args[3]);
		}

		/* Get the exit reason before proc_exit */
		subcode = FUNC15(task->bsd_info);
		FUNC16(task->bsd_info);
		/*
		 * if there is crash info in task
		 * then do the deliver action since this is
		 * last thread for this task.
		 */
		if (task->corpse_info) {
			FUNC20(task, FUNC6(), EXC_RESOURCE, subcode);
		}
	}

	if (threadcnt == 0) {
		FUNC23(task);
		if (FUNC21(task)) {
			FUNC35((event_t)&task->active_thread_count);
		}
		FUNC24(task);
	}

	FUNC38(thread->uthread);

	s = FUNC17();
	FUNC28(thread);

	/*
	 * Ensure that the depress timer is no longer enqueued,
	 * so the timer (stored in the thread) can be safely deallocated
	 *
	 * TODO: build timer_call_cancel_wait
	 */

	FUNC2((thread->sched_flags & TH_SFLAG_DEPRESSED_MASK) == 0);

	uint32_t delay_us = 1;

	while (thread->depress_timer_active > 0) {
		FUNC34(thread);
		FUNC18(s);

		FUNC7(delay_us++);

		if (delay_us > USEC_PER_SEC)
			FUNC14("depress timer failed to inactivate!"
			      "thread: %p depress_timer_active: %d",
			      thread, thread->depress_timer_active);

		s = FUNC17();
		FUNC28(thread);
	}

	/*
	 *	Cancel wait timer, and wait for
	 *	concurrent expirations.
	 */
	if (thread->wait_timer_is_set) {
		thread->wait_timer_is_set = FALSE;

		if (FUNC36(&thread->wait_timer))
			thread->wait_timer_active--;
	}

	delay_us = 1;

	while (thread->wait_timer_active > 0) {
		FUNC34(thread);
		FUNC18(s);

		FUNC7(delay_us++);

		if (delay_us > USEC_PER_SEC)
			FUNC14("wait timer failed to inactivate!"
			      "thread: %p wait_timer_active: %d",
			      thread, thread->wait_timer_active);

		s = FUNC17();
		FUNC28(thread);
	}

	/*
	 *	If there is a reserved stack, release it.
	 */
	if (thread->reserved_stack != 0) {
		FUNC19(thread);
		thread->reserved_stack = 0;
	}

	/*
	 *	Mark thread as terminating, and block.
	 */
	thread->state |= TH_TERMINATE;
	FUNC29(thread, THREAD_UNINT);

	FUNC2((thread->sched_flags & TH_SFLAG_WAITQ_PROMOTED) == 0);
	FUNC2((thread->sched_flags & TH_SFLAG_RW_PROMOTED) == 0);
	FUNC2((thread->sched_flags & TH_SFLAG_EXEC_PROMOTED) == 0);
	FUNC2((thread->sched_flags & TH_SFLAG_PROMOTED) == 0);
	FUNC2(thread->promotions == 0);
	FUNC2(thread->was_promoted_on_wakeup == 0);
	FUNC2(thread->waiting_for_mutex == NULL);
	FUNC2(thread->rwlock_count == 0);

	FUNC34(thread);
	/* splsched */

	FUNC26((thread_continue_t)thread_terminate_continue);
	/*NOTREACHED*/
}