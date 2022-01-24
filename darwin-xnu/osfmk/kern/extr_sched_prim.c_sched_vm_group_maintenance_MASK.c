#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  scalar_t__ processor_t ;
typedef  void* boolean_t ;
struct TYPE_9__ {int state; scalar_t__ runq; scalar_t__ last_made_runnable_time; } ;

/* Variables and functions */
 void* FALSE ; 
 scalar_t__ PROCESSOR_NULL ; 
 int SCHED_PREEMPT ; 
 int SCHED_TAILQ ; 
 TYPE_1__* THREAD_NULL ; 
 int TH_RUN ; 
 int TH_WAIT ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ master_processor ; 
 scalar_t__ sched_tick_interval ; 
 int /*<<< orphan*/  sched_vm_group_list_lock ; 
 void* sched_vm_group_temporarily_unbound ; 
 int sched_vm_group_thread_count ; 
 TYPE_1__** sched_vm_group_thread_list ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 void* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC11(void)
{
	uint64_t ctime = FUNC1();
	uint64_t longtime = ctime - sched_tick_interval;
	int i;
	spl_t s;
	boolean_t high_latency_observed = FALSE;
	boolean_t runnable_and_not_on_runq_observed = FALSE;
	boolean_t bind_target_changed = FALSE;
	processor_t bind_target = PROCESSOR_NULL;

	/* Make sure nobody attempts to add new threads while we are enumerating them */
	FUNC2(&sched_vm_group_list_lock);

	s = FUNC4();

	for (i=0; i < sched_vm_group_thread_count; i++) {
		thread_t thread = sched_vm_group_thread_list[i];
		FUNC0(thread != THREAD_NULL);
		FUNC7(thread);
		if ((thread->state & (TH_RUN|TH_WAIT)) == TH_RUN) {
			if (thread->runq != PROCESSOR_NULL && thread->last_made_runnable_time < longtime) {
				high_latency_observed = TRUE;
			} else if (thread->runq == PROCESSOR_NULL) {
				/* There are some cases where a thread be transitiong that also fall into this case */
				runnable_and_not_on_runq_observed = TRUE;
			}
		}
		FUNC10(thread);

		if (high_latency_observed && runnable_and_not_on_runq_observed) {
			/* All the things we are looking for are true, stop looking */
			break;
		}
	}

	FUNC5(s);

	if (sched_vm_group_temporarily_unbound) {
		/* If we turned off binding, make sure everything is OK before rebinding */
		if (!high_latency_observed) {
			/* rebind */
			bind_target_changed = TRUE;
			bind_target = master_processor;
			sched_vm_group_temporarily_unbound = FALSE; /* might be reset to TRUE if change cannot be completed */
		}
	} else {
		/*
		 * Check if we're in a bad state, which is defined by high
		 * latency with no core currently executing a thread. If a
		 * single thread is making progress on a CPU, that means the
		 * binding concept to reduce parallelism is working as
		 * designed.
		 */
		if (high_latency_observed && !runnable_and_not_on_runq_observed) {
			/* unbind */
			bind_target_changed = TRUE;
			bind_target = PROCESSOR_NULL;
			sched_vm_group_temporarily_unbound = TRUE;
		}
	}

	if (bind_target_changed) {
		s = FUNC4();
		for (i=0; i < sched_vm_group_thread_count; i++) {
			thread_t thread = sched_vm_group_thread_list[i];
			boolean_t removed;
			FUNC0(thread != THREAD_NULL);

			FUNC7(thread);
			removed = FUNC9(thread);
			if (removed || ((thread->state & (TH_RUN | TH_WAIT)) == TH_WAIT)) {
				FUNC6(thread, bind_target);
			} else {
				/*
				 * Thread was in the middle of being context-switched-to,
				 * or was in the process of blocking. To avoid switching the bind
				 * state out mid-flight, defer the change if possible.
				 */
				if (bind_target == PROCESSOR_NULL) {
					FUNC6(thread, bind_target);
				} else {
					sched_vm_group_temporarily_unbound = TRUE; /* next pass will try again */
				}
			}

			if (removed) {
				FUNC8(thread, SCHED_PREEMPT | SCHED_TAILQ);
			}
			FUNC10(thread);
		}
		FUNC5(s);
	}

	FUNC3(&sched_vm_group_list_lock);
}