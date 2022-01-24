#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * dtrace_pid_probe_ptr ; 
 int /*<<< orphan*/ * dtrace_return_probe_ptr ; 
 int /*<<< orphan*/  fasttrap_count_mtx ; 
 scalar_t__ fasttrap_pid_count ; 
 int /*<<< orphan*/  fasttrap_pid_probe ; 
 int /*<<< orphan*/  fasttrap_return_probe ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void)
{
	/*
	 * We don't have to play the rw lock game here because we're
	 * providing something rather than taking something away --
	 * we can be sure that no threads have tried to follow this
	 * function pointer yet.
	 */
	FUNC1(&fasttrap_count_mtx);
	if (fasttrap_pid_count == 0) {
		FUNC0(dtrace_pid_probe_ptr == NULL);
		FUNC0(dtrace_return_probe_ptr == NULL);
		dtrace_pid_probe_ptr = &fasttrap_pid_probe;
		dtrace_return_probe_ptr = &fasttrap_return_probe;
	}
	FUNC0(dtrace_pid_probe_ptr == &fasttrap_pid_probe);
	FUNC0(dtrace_return_probe_ptr == &fasttrap_return_probe);
	fasttrap_pid_count++;
	FUNC2(&fasttrap_count_mtx);
}