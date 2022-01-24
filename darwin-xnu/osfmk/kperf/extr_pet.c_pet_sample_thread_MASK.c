#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  task_t ;
struct kperf_context {int cur_pid; int /*<<< orphan*/  cur_task; TYPE_1__* cur_thread; } ;
typedef  scalar_t__ boolean_t ;
struct TYPE_5__ {int kperf_pet_cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int PERF_PET_SAMPLE_THREAD ; 
 int SAMPLE_FLAG_EMPTY_CALLSTACK ; 
 int SAMPLE_FLAG_IDLE_THREADS ; 
 int SAMPLE_FLAG_THREAD_ONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct kperf_context*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pet_action_id ; 
 int /*<<< orphan*/  pet_lock ; 
 int /*<<< orphan*/  pet_sample ; 

__attribute__((used)) static void
FUNC5(int pid, task_t task, thread_t thread, uint32_t idle_rate)
{
	FUNC4(pet_lock, LCK_MTX_ASSERT_OWNED);

	uint32_t sample_flags = SAMPLE_FLAG_IDLE_THREADS | SAMPLE_FLAG_THREAD_ONLY;

	FUNC0(PERF_PET_SAMPLE_THREAD | DBG_FUNC_START);

	/* work out the context */
	struct kperf_context ctx = {
		.cur_thread = thread,
		.cur_task = task,
		.cur_pid = pid,
	};

	boolean_t thread_dirty = FUNC2(thread);

	/*
	 * Clean a dirty thread and skip callstack sample if the thread was not
	 * dirty and thread has skipped less than pet_idle_rate samples.
	 */
	if (thread_dirty) {
		FUNC3(thread, FALSE);
	} else if ((thread->kperf_pet_cnt % idle_rate) != 0) {
		sample_flags |= SAMPLE_FLAG_EMPTY_CALLSTACK;
	}
	thread->kperf_pet_cnt++;

	FUNC1(pet_sample, &ctx, pet_action_id, sample_flags);

	FUNC0(PERF_PET_SAMPLE_THREAD | DBG_FUNC_END);
}