#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint64_t ;
typedef  TYPE_1__* thread_t ;
typedef  scalar_t__ ledger_t ;
struct TYPE_5__ {int /*<<< orphan*/  cpu_time; } ;
struct TYPE_4__ {scalar_t__ t_threadledger; int options; } ;

/* Variables and functions */
 int KERN_INVALID_ARGUMENT ; 
 int KERN_RESOURCE_SHORTAGE ; 
 int /*<<< orphan*/  LEDGER_ACTION_BLOCK ; 
 int /*<<< orphan*/  LEDGER_ACTION_IGNORE ; 
 int /*<<< orphan*/  LEDGER_CREATE_INACTIVE_ENTRIES ; 
 int LEDGER_LIMIT_INFINITY ; 
 scalar_t__ LEDGER_NULL ; 
 int MINIMUM_CPULIMIT_INTERVAL_MS ; 
 int NSEC_PER_MSEC ; 
 int THREAD_CPULIMIT_DISABLE ; 
 int THREAD_CPULIMIT_EXCEPTION ; 
 int TH_OPT_PROC_CPULIMIT ; 
 int TH_OPT_PRVT_CPULIMIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cpumon_ustackshots_trigger_pct ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  thread_ledger_template ; 
 TYPE_2__ thread_ledgers ; 

int
FUNC10(int action, uint8_t percentage, uint64_t interval_ns)
{
	thread_t	thread = FUNC1(); 
	ledger_t	l;
	uint64_t 	limittime = 0;
	uint64_t	abstime = 0;

	FUNC0(percentage <= 100);

	if (action == THREAD_CPULIMIT_DISABLE) {
		/*
		 * Remove CPU limit, if any exists.
		 */
		if (thread->t_threadledger != LEDGER_NULL) {
			l = thread->t_threadledger;
			FUNC6(l, thread_ledgers.cpu_time, LEDGER_LIMIT_INFINITY, 0);
			FUNC5(l, thread_ledgers.cpu_time, LEDGER_ACTION_IGNORE);
			thread->options &= ~(TH_OPT_PROC_CPULIMIT | TH_OPT_PRVT_CPULIMIT);
		}

		return (0);
	}

	if (interval_ns < MINIMUM_CPULIMIT_INTERVAL_MS * NSEC_PER_MSEC) {
		return (KERN_INVALID_ARGUMENT);
	}

 	l = thread->t_threadledger;
	if (l == LEDGER_NULL) {
		/*
		 * This thread doesn't yet have a per-thread ledger; so create one with the CPU time entry active.
		 */
		if ((l = FUNC4(thread_ledger_template, LEDGER_CREATE_INACTIVE_ENTRIES)) == LEDGER_NULL)
			return (KERN_RESOURCE_SHORTAGE);

		/*
		 * We are the first to create this thread's ledger, so only activate our entry.
		 */
		FUNC3(l, thread_ledgers.cpu_time);
		thread->t_threadledger = l;
	}

	/*
	 * The limit is specified as a percentage of CPU over an interval in nanoseconds.
	 * Calculate the amount of CPU time that the thread needs to consume in order to hit the limit.
	 */
	limittime = (interval_ns * percentage) / 100;
	FUNC8(limittime, &abstime); 
	FUNC6(l, thread_ledgers.cpu_time, abstime, cpumon_ustackshots_trigger_pct);
	/*
	 * Refill the thread's allotted CPU time every interval_ns nanoseconds.
	 */
	FUNC7(l, thread_ledgers.cpu_time, interval_ns);

	if (action == THREAD_CPULIMIT_EXCEPTION) {
		/*
		 * We don't support programming the CPU usage monitor on a task if any of its
		 * threads have a per-thread blocking CPU limit configured.
		 */
		if (thread->options & TH_OPT_PRVT_CPULIMIT) {
			FUNC9("CPU usage monitor activated, but blocking thread limit exists");
		}

		/*
		 * Make a note that this thread's CPU limit is being used for the task-wide CPU
		 * usage monitor. We don't have to arm the callback which will trigger the
		 * exception, because that was done for us in ledger_instantiate (because the
		 * ledger template used has a default callback).
		 */
		thread->options |= TH_OPT_PROC_CPULIMIT;
	} else {
		/*
		 * We deliberately override any CPU limit imposed by a task-wide limit (eg
		 * CPU usage monitor).
		 */
		thread->options &= ~TH_OPT_PROC_CPULIMIT;		

		thread->options |= TH_OPT_PRVT_CPULIMIT;
		/* The per-thread ledger template by default has a callback for CPU time */
		FUNC2(l, thread_ledgers.cpu_time);
		FUNC5(l, thread_ledgers.cpu_time, LEDGER_ACTION_BLOCK);
	}

	return (0);
}