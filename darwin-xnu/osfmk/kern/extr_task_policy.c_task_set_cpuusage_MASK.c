#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  unsigned long long uint64_t ;
typedef  int /*<<< orphan*/  thread_call_param_t ;
typedef  TYPE_1__* task_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_11__ {int /*<<< orphan*/ * bsd_info; } ;
struct TYPE_10__ {int /*<<< orphan*/  cpu_time; } ;
struct TYPE_9__ {int rusage_cpu_flags; unsigned long long rusage_cpu_perthr_interval; int rusage_cpu_perthr_percentage; int rusage_cpu_percentage; unsigned long long rusage_cpu_interval; unsigned long long rusage_cpu_deadline; int /*<<< orphan*/ * rusage_cpu_callt; int /*<<< orphan*/  ledger; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  LEDGER_ACTION_BLOCK ; 
 unsigned long long NSEC_PER_SEC ; 
 int PROC_POLICY_CPUMON_DEFAULTS ; 
 int PROC_POLICY_CPUMON_DISABLE ; 
 int TASK_RUSECPU_FLAGS_DEADLINE ; 
 int TASK_RUSECPU_FLAGS_PERTHR_LIMIT ; 
 int TASK_RUSECPU_FLAGS_PROC_LIMIT ; 
 int /*<<< orphan*/  THREAD_CALL_PRIORITY_KERNEL ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long long,unsigned long long*) ; 
 TYPE_8__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long long,unsigned long long*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 unsigned long long proc_max_cpumon_interval ; 
 int proc_max_cpumon_percentage ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 () ; 
 int /*<<< orphan*/  task_action_cpuusage ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 TYPE_5__ task_ledgers ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned long long) ; 

__attribute__((used)) static int
FUNC18(task_t task, uint8_t percentage, uint64_t interval, uint64_t deadline, int scope, int cpumon_entitled)
{
	uint64_t abstime = 0;
	uint64_t limittime = 0;

	FUNC3(&task->lock, LCK_MTX_ASSERT_OWNED);

	/* By default, refill once per second */
	if (interval == 0)
		interval = NSEC_PER_SEC;

	if (percentage != 0) {
		if (scope == TASK_RUSECPU_FLAGS_PERTHR_LIMIT) {
			boolean_t warn = FALSE;

			/*
			 * A per-thread CPU limit on a task generates an exception
			 * (LEDGER_ACTION_EXCEPTION) if any one thread in the task
			 * exceeds the limit.
			 */

			if (percentage == PROC_POLICY_CPUMON_DISABLE) {
				if (cpumon_entitled) {
					/* 25095698 - task_disable_cpumon() should be reliable */
					FUNC11(task);
					return 0;
				}

				/*
				 * This task wishes to disable the CPU usage monitor, but it's
				 * missing the required entitlement:
				 *     com.apple.private.kernel.override-cpumon
				 *
				 * Instead, treat this as a request to reset its params 
				 * back to the defaults.
				 */
				warn = TRUE;
				percentage = PROC_POLICY_CPUMON_DEFAULTS;
			}

			if (percentage == PROC_POLICY_CPUMON_DEFAULTS) {
				percentage = proc_max_cpumon_percentage;
				interval   = proc_max_cpumon_interval;
			}

			if (percentage > 100) {
				percentage = 100;
			}

			/*
			 * Passing in an interval of -1 means either:
			 * - Leave the interval as-is, if there's already a per-thread
			 *   limit configured
			 * - Use the system default.
		  	 */
			if (interval == -1ULL) {
				if (task->rusage_cpu_flags & TASK_RUSECPU_FLAGS_PERTHR_LIMIT) {
			 		interval = task->rusage_cpu_perthr_interval;
				} else {
					interval = proc_max_cpumon_interval;
				}
			}

			/*
			 * Enforce global caps on CPU usage monitor here if the process is not
			 * entitled to escape the global caps.
			 */
			 if ((percentage > proc_max_cpumon_percentage) && (cpumon_entitled == 0)) {
				warn = TRUE;
			 	percentage = proc_max_cpumon_percentage;
			 }

			 if ((interval > proc_max_cpumon_interval) && (cpumon_entitled == 0)) {
				warn = TRUE;
			 	interval = proc_max_cpumon_interval;
			 }

			if (warn) {
				int 	  pid = 0;
				const char *procname = "unknown";

#ifdef MACH_BSD
				pid = proc_selfpid();
				if (current_task()->bsd_info != NULL) {
					procname = proc_name_address(current_task()->bsd_info);
				}
#endif

				FUNC8("process %s[%d] denied attempt to escape CPU monitor"
					" (missing required entitlement).\n", procname, pid);
			}

			/* configure the limit values */
			task->rusage_cpu_perthr_percentage = percentage;
			task->rusage_cpu_perthr_interval = interval;

			/* and enable the CPU monitor */
			(void)FUNC12(task);
		} else if (scope == TASK_RUSECPU_FLAGS_PROC_LIMIT) {
			/*
			 * Currently, a proc-wide CPU limit always blocks if the limit is
			 * exceeded (LEDGER_ACTION_BLOCK).
			 */
			task->rusage_cpu_flags |= TASK_RUSECPU_FLAGS_PROC_LIMIT;
			task->rusage_cpu_percentage = percentage;
			task->rusage_cpu_interval = interval;

			limittime = (interval * percentage) / 100;
			FUNC7(limittime, &abstime);

			FUNC5(task->ledger, task_ledgers.cpu_time, abstime, 0);
			FUNC6(task->ledger, task_ledgers.cpu_time, interval);
			FUNC4(task->ledger, task_ledgers.cpu_time, LEDGER_ACTION_BLOCK);
		}
	}

	if (deadline != 0) {
		FUNC0(scope == TASK_RUSECPU_FLAGS_DEADLINE);

		/* if already in use, cancel and wait for it to cleanout */
		if (task->rusage_cpu_callt != NULL) {
			FUNC14(task);
			FUNC16(task->rusage_cpu_callt);
			FUNC13(task);
		}
		if (task->rusage_cpu_callt == NULL) {
			task->rusage_cpu_callt = FUNC15(task_action_cpuusage, (thread_call_param_t)task, THREAD_CALL_PRIORITY_KERNEL);
		}
		/* setup callout */
		if (task->rusage_cpu_callt != 0) {
			uint64_t save_abstime = 0;

			task->rusage_cpu_flags |= TASK_RUSECPU_FLAGS_DEADLINE;
			task->rusage_cpu_deadline = deadline;

			FUNC7(deadline, &abstime);
			save_abstime = abstime;
			FUNC1(save_abstime, &abstime);
			FUNC17(task->rusage_cpu_callt, abstime);
		}
	}

	return(0);
}