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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ thread_t ;
typedef  int /*<<< orphan*/  task_t ;
struct kperf_context {int cur_pid; int /*<<< orphan*/  cur_task; } ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_2__ {int logical_cpu_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int,...) ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  ERR_THREAD ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  PERF_PET_ERROR ; 
 int PERF_PET_SAMPLE_TASK ; 
 int /*<<< orphan*/  SAMPLE_FLAG_TASK_ONLY ; 
 scalar_t__ THREAD_NULL ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  kernel_task ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct kperf_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__* kperf_tid_on_cpus ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ machine_info ; 
 int /*<<< orphan*/  pet_action_id ; 
 int /*<<< orphan*/  pet_lock ; 
 int /*<<< orphan*/  pet_sample ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__* pet_threads ; 
 unsigned int pet_threads_count ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 

__attribute__((used)) static void
FUNC14(task_t task, uint32_t idle_rate)
{
	FUNC6(pet_lock, LCK_MTX_ASSERT_OWNED);

	FUNC1(PERF_PET_SAMPLE_TASK | DBG_FUNC_START);

	int pid = FUNC9(task);
	if (FUNC3(pet_action_id)) {
		struct kperf_context ctx = {
			.cur_task = task,
			.cur_pid = pid,
		};

		FUNC5(pet_sample, &ctx, pet_action_id, SAMPLE_FLAG_TASK_ONLY);
	}

	if (!FUNC4(pet_action_id)) {
		FUNC1(PERF_PET_SAMPLE_TASK | DBG_FUNC_END);
		return;
	}

	kern_return_t kr = KERN_SUCCESS;

	/*
	 * Suspend the task to see an atomic snapshot of all its threads.  This
	 * is expensive, and disruptive.
	 */
	bool needs_suspend = task != kernel_task;
	if (needs_suspend) {
		kr = FUNC11(task);
		if (kr != KERN_SUCCESS) {
			FUNC1(PERF_PET_SAMPLE_TASK | DBG_FUNC_END, 1);
			return;
		}
		needs_suspend = true;
	}

	kr = FUNC8(task);
	if (kr != KERN_SUCCESS) {
		FUNC0(PERF_PET_ERROR, ERR_THREAD, kr);
		goto out;
	}

	for (unsigned int i = 0; i < pet_threads_count; i++) {
		thread_t thread = pet_threads[i];
		FUNC2(thread != THREAD_NULL);

		/*
		 * Do not sample the thread if it was on a CPU when the timer fired.
		 */
		int cpu = 0;
		for (cpu = 0; cpu < machine_info.logical_cpu_max; cpu++) {
			if (kperf_tid_on_cpus[cpu] == FUNC13(thread)) {
				break;
			}
		}

		/* the thread was not on a CPU */
		if (cpu == machine_info.logical_cpu_max) {
			FUNC7(pid, task, thread, idle_rate);
		}

		FUNC12(pet_threads[i]);
	}

out:
	if (needs_suspend) {
		FUNC10(task);
	}

	FUNC1(PERF_PET_SAMPLE_TASK | DBG_FUNC_END, pet_threads_count);
}