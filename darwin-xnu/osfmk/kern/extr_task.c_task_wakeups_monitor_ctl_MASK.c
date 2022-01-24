#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  TYPE_1__* task_t ;
typedef  int /*<<< orphan*/  ledger_t ;
typedef  int ledger_amount_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int int64_t ;
typedef  int int32_t ;
struct TYPE_8__ {int /*<<< orphan*/  interrupt_wakeups; } ;
struct TYPE_7__ {int rusage_cpu_flags; int /*<<< orphan*/  ledger; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int LEDGER_LIMIT_INFINITY ; 
 int NSEC_PER_SEC ; 
 int TASK_RUSECPU_FLAGS_FATAL_WAKEUPSMON ; 
 int /*<<< orphan*/  TF_WAKEMON_WARNING ; 
 int WAKEMON_DISABLE ; 
 int WAKEMON_ENABLE ; 
 int WAKEMON_GET_PARAMS ; 
 int WAKEMON_MAKE_FATAL ; 
 int WAKEMON_SET_DEFAULTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_6__ task_ledgers ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int task_wakeups_monitor_interval ; 
 int task_wakeups_monitor_rate ; 
 int /*<<< orphan*/  task_wakeups_monitor_ustackshots_trigger_pct ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC10(task_t task, uint32_t *flags, int32_t *rate_hz)
{
	ledger_t ledger = task->ledger;

	FUNC7(task);
	if (*flags & WAKEMON_GET_PARAMS) {
		ledger_amount_t	limit;
		uint64_t		period;

		FUNC3(ledger, task_ledgers.interrupt_wakeups, &limit);
		FUNC4(ledger, task_ledgers.interrupt_wakeups, &period);

		if (limit != LEDGER_LIMIT_INFINITY) {
			/*
			 * An active limit means the wakeups monitor is enabled.
			 */
			*rate_hz = (int32_t)(limit / (int64_t)(period / NSEC_PER_SEC));
			*flags = WAKEMON_ENABLE;
			if (task->rusage_cpu_flags & TASK_RUSECPU_FLAGS_FATAL_WAKEUPSMON) {
				*flags |= WAKEMON_MAKE_FATAL;
			}
		} else {
			*flags = WAKEMON_DISABLE;
			*rate_hz = -1;
		}

		/*
		 * If WAKEMON_GET_PARAMS is present in flags, all other flags are ignored.
		 */
 		FUNC8(task);
		return KERN_SUCCESS;
	}

	if (*flags & WAKEMON_ENABLE) {
		if (*flags & WAKEMON_SET_DEFAULTS) {
			*rate_hz = task_wakeups_monitor_rate;
		}

#ifndef CONFIG_NOMONITORS
		if (*flags & WAKEMON_MAKE_FATAL) {
			task->rusage_cpu_flags |= TASK_RUSECPU_FLAGS_FATAL_WAKEUPSMON;
		}
#endif /* CONFIG_NOMONITORS */

		if (*rate_hz <= 0) {
			FUNC8(task);
			return KERN_INVALID_ARGUMENT;
		}

#ifndef CONFIG_NOMONITORS
		FUNC5(ledger, task_ledgers.interrupt_wakeups, *rate_hz * task_wakeups_monitor_interval,
			task_wakeups_monitor_ustackshots_trigger_pct);
		FUNC6(ledger, task_ledgers.interrupt_wakeups, task_wakeups_monitor_interval * NSEC_PER_SEC);
		FUNC2(ledger, task_ledgers.interrupt_wakeups);
#endif /* CONFIG_NOMONITORS */
	} else if (*flags & WAKEMON_DISABLE) {
		/*
		 * Caller wishes to disable wakeups monitor on the task.
		 *
		 * Disable telemetry if it was triggered by the wakeups monitor, and
		 * remove the limit & callback on the wakeups ledger entry.
		 */
#if CONFIG_TELEMETRY
		telemetry_task_ctl_locked(task, TF_WAKEMON_WARNING, 0);
#endif
		FUNC1(ledger, task_ledgers.interrupt_wakeups);
		FUNC0(ledger, task_ledgers.interrupt_wakeups);
	}

	FUNC8(task);
	return KERN_SUCCESS;
}