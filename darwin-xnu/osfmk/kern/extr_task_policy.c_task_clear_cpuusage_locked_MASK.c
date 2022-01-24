#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ thread_call_t ;
typedef  TYPE_1__* task_t ;
struct TYPE_8__ {int /*<<< orphan*/  cpu_time; } ;
struct TYPE_7__ {int rusage_cpu_flags; scalar_t__ rusage_cpu_callt; scalar_t__ rusage_cpu_deadline; scalar_t__ rusage_cpu_interval; scalar_t__ rusage_cpu_percentage; int /*<<< orphan*/  ledger; } ;

/* Variables and functions */
 int /*<<< orphan*/  LEDGER_LIMIT_INFINITY ; 
 int TASK_RUSECPU_FLAGS_DEADLINE ; 
 int TASK_RUSECPU_FLAGS_PROC_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_4__ task_ledgers ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int
FUNC6(task_t task, int cpumon_entitled)
{
	thread_call_t savecallt;

	/* cancel percentage handling if set */
	if (task->rusage_cpu_flags & TASK_RUSECPU_FLAGS_PROC_LIMIT) {
		task->rusage_cpu_flags &= ~TASK_RUSECPU_FLAGS_PROC_LIMIT;		
		FUNC0(task->ledger, task_ledgers.cpu_time, LEDGER_LIMIT_INFINITY, 0);
		task->rusage_cpu_percentage = 0;
		task->rusage_cpu_interval = 0;
	}

	/*
	 * Disable the CPU usage monitor.
	 */
	if (cpumon_entitled) {
		FUNC1(task);
	}

	/* cancel deadline handling if set */
	if (task->rusage_cpu_flags & TASK_RUSECPU_FLAGS_DEADLINE) {
		task->rusage_cpu_flags &= ~TASK_RUSECPU_FLAGS_DEADLINE;
		if (task->rusage_cpu_callt != 0) {
			savecallt = task->rusage_cpu_callt;
			task->rusage_cpu_callt = NULL;
			task->rusage_cpu_deadline = 0;
			FUNC3(task);
			FUNC4(savecallt);
			FUNC5(savecallt);
			FUNC2(task);
		}
	}
	return(0);
}