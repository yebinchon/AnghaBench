#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cpu_ft_lock; struct TYPE_3__* cpu_next; } ;
typedef  TYPE_1__ dtrace_cpu_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* CPU ; 
 int /*<<< orphan*/ * dtrace_pid_probe_ptr ; 
 int /*<<< orphan*/ * dtrace_return_probe_ptr ; 
 int /*<<< orphan*/  fasttrap_count_mtx ; 
 scalar_t__ fasttrap_pid_count ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(void)
{
	//ASSERT(MUTEX_HELD(&cpu_lock));

	FUNC1(&fasttrap_count_mtx);
	FUNC0(fasttrap_pid_count > 0);
	fasttrap_pid_count--;
	if (fasttrap_pid_count == 0) {
		dtrace_cpu_t *cur, *cpu = CPU;

		/*
		 * APPLE NOTE: This loop seems broken, it touches every CPU
		 * but the one we're actually running on. Need to ask Sun folks
		 * if that is safe. Scenario is this: We're running on CPU A,
		 * and lock all but A. Then we get preempted, and start running
		 * on CPU B. A probe fires on A, and is allowed to enter. BOOM!
		 */
		for (cur = cpu->cpu_next; cur != cpu; cur = cur->cpu_next) {
			FUNC3(&cur->cpu_ft_lock);
			// rw_enter(&cur->cpu_ft_lock, RW_WRITER);
		}

		dtrace_pid_probe_ptr = NULL;
		dtrace_return_probe_ptr = NULL;

		for (cur = cpu->cpu_next; cur != cpu; cur = cur->cpu_next) {
			FUNC4(&cur->cpu_ft_lock);
			// rw_exit(&cur->cpu_ft_lock);
		}
	}
	FUNC2(&fasttrap_count_mtx);
}