#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
typedef  TYPE_1__* thread_t ;
typedef  TYPE_2__* task_t ;
struct ledger {int dummy; } ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_8__ {scalar_t__ rusage_cpu_flags; scalar_t__ rusage_cpu_perthr_percentage; scalar_t__ rusage_cpu_perthr_interval; scalar_t__ halting; int /*<<< orphan*/  active; } ;
struct TYPE_7__ {int options; struct ledger* t_threadledger; int /*<<< orphan*/  active; TYPE_2__* task; struct ledger* t_ledger; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ FUNC1 (struct ledger*) ; 
 scalar_t__ TASK_RUSECPU_FLAGS_PERTHR_LIMIT ; 
 int /*<<< orphan*/  THREAD_CPULIMIT_DISABLE ; 
 int /*<<< orphan*/  THREAD_CPULIMIT_EXCEPTION ; 
 int TH_OPT_PROC_CPULIMIT ; 
 int TH_OPT_PRVT_CPULIMIT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* FUNC3 () ; 
 int FUNC4 (struct ledger*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct ledger*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

void
FUNC12(thread_t thread)
{
	struct ledger	*l = thread->t_ledger;
	struct ledger 	*thl;
	uint32_t	block;
	uint64_t	now;
	uint8_t		task_flags;
	uint8_t		task_percentage;
	uint64_t	task_interval;

	kern_return_t ret;
	task_t task = thread->task;

	FUNC6(("Ledger AST for %p\n", thread));

	FUNC0(task != NULL);
	FUNC0(thread == FUNC3());

top:
	/*
	 * Take a self-consistent snapshot of the CPU usage monitor parameters. The task
	 * can change them at any point (with the task locked).
	 */
	FUNC8(task);
	task_flags = task->rusage_cpu_flags;
	task_percentage = task->rusage_cpu_perthr_percentage;
	task_interval = task->rusage_cpu_perthr_interval;
	FUNC9(task);

	/*
	 * Make sure this thread is up to date with regards to any task-wide per-thread
	 * CPU limit, but only if it doesn't have a thread-private blocking CPU limit.
	 */
	if (((task_flags & TASK_RUSECPU_FLAGS_PERTHR_LIMIT) != 0) &&
	    ((thread->options & TH_OPT_PRVT_CPULIMIT) == 0)) {
		uint8_t	 percentage;
		uint64_t interval;
		int	 action;

		FUNC10(&action, &percentage, &interval);

		/*
		 * If the thread's CPU limits no longer match the task's, or the
		 * task has a limit but the thread doesn't, update the limit.
		 */
		if (((thread->options & TH_OPT_PROC_CPULIMIT) == 0) ||
		    (interval != task_interval) || (percentage != task_percentage)) {
			FUNC11(THREAD_CPULIMIT_EXCEPTION, task_percentage, task_interval);
			FUNC2((thread->options & TH_OPT_PROC_CPULIMIT) != 0);
		}
	} else if (((task_flags & TASK_RUSECPU_FLAGS_PERTHR_LIMIT) == 0) &&
		   (thread->options & TH_OPT_PROC_CPULIMIT)) {
		FUNC2((thread->options & TH_OPT_PRVT_CPULIMIT) == 0);

		/*
		 * Task no longer has a per-thread CPU limit; remove this thread's
		 * corresponding CPU limit.
		 */
		FUNC11(THREAD_CPULIMIT_DISABLE, 0, 0);
		FUNC2((thread->options & TH_OPT_PROC_CPULIMIT) == 0);
	}

	/*
	 * If the task or thread is being terminated, let's just get on with it
	 */
	if ((l == NULL) || !task->active || task->halting || !thread->active)
		return;
	
	/*
	 * Examine all entries in deficit to see which might be eligble for
	 * an automatic refill, which require callbacks to be issued, and
	 * which require blocking.
	 */
	block = 0;
	now = FUNC7();

	/*
	 * Note that thread->t_threadledger may have been changed by the
	 * thread_set_cpulimit() call above - so don't examine it until afterwards.
	 */
	thl = thread->t_threadledger;
	if (FUNC1(thl)) {
		block |= FUNC4(thl, now);
	}
	block |= FUNC4(l, now);

	/*
	 * If we are supposed to block on the availability of one or more
	 * resources, find the first entry in deficit for which we should wait.
	 * Schedule a refill if necessary and then sleep until the resource
	 * becomes available.
	 */
	if (block) {
		if (FUNC1(thl)) {
			ret = FUNC5(thl);
			if (ret != KERN_SUCCESS)
				goto top;
		}
		ret = FUNC5(l);
		if (ret != KERN_SUCCESS)
			goto top;
	} /* block */
}