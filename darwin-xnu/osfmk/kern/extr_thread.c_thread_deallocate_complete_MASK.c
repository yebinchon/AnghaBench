#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  task_t ;
struct io_stat_info {int dummy; } ;
struct TYPE_11__ {scalar_t__ ref_count; int state; scalar_t__ runq; scalar_t__ turnstile; scalar_t__ ith_voucher; scalar_t__ kernel_stack; scalar_t__ thread_magic; int /*<<< orphan*/  mutex; scalar_t__ thread_io_stats; scalar_t__ t_threadledger; scalar_t__ t_ledger; int /*<<< orphan*/ * uthread; int /*<<< orphan*/  task; } ;

/* Variables and functions */
 scalar_t__ IPC_VOUCHER_NULL ; 
 scalar_t__ PROCESSOR_NULL ; 
 int TH_TERMINATE2 ; 
 scalar_t__ TURNSTILE_NULL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  thread_lck_grp ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  thread_zone ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void
FUNC17(
	thread_t			thread)
{
	task_t				task;

	FUNC1(thread);

	FUNC0(thread->ref_count == 0);

	FUNC0(FUNC13(thread) == 0);

	if (!(thread->state & TH_TERMINATE2))
		FUNC9("thread_deallocate: thread not properly terminated\n");

	FUNC0(thread->runq == PROCESSOR_NULL);

#if KPC
	kpc_thread_destroy(thread);
#endif

	FUNC2(thread);

	FUNC10(thread);

	task = thread->task;

#ifdef MACH_BSD
	{
		void *ut = thread->uthread;

		thread->uthread = NULL;
		uthread_zone_free(ut);
	}
#endif /* MACH_BSD */

	if (thread->t_ledger)
		FUNC7(thread->t_ledger);
	if (thread->t_threadledger)
		FUNC7(thread->t_threadledger);

	FUNC0(thread->turnstile != TURNSTILE_NULL);
	if (thread->turnstile)
		FUNC14(thread->turnstile);

	if (IPC_VOUCHER_NULL != thread->ith_voucher)
		FUNC3(thread->ith_voucher);

	if (thread->thread_io_stats)
		FUNC4(thread->thread_io_stats, sizeof(struct io_stat_info));

	if (thread->kernel_stack != 0)
		FUNC11(thread);

	FUNC6(&thread->mutex, &thread_lck_grp);
	FUNC8(thread);

	FUNC12(task);

#if MACH_ASSERT
	assert_thread_magic(thread);
	thread->thread_magic = 0;
#endif /* MACH_ASSERT */

	FUNC16(thread_zone, thread);
}