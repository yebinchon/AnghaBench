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
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  thread_continue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PERF_TI_CSWITCH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ kperf_kdebug_cswitch ; 
 scalar_t__ kperf_lazy_wait_action ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t*) ; 
 scalar_t__ kperf_lightweight_pet_active ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,uintptr_t*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(thread_t thread, thread_continue_t continuation,
                      uintptr_t *starting_fp)
{
	if (kperf_kdebug_cswitch) {
		/* trace the new thread's PID for Instruments */
		int pid = FUNC4(FUNC1(thread));
		FUNC0(PERF_TI_CSWITCH, FUNC5(thread), pid);
	}
	if (kperf_lightweight_pet_active) {
		FUNC3(thread, continuation, starting_fp);
	}
	if (kperf_lazy_wait_action != 0) {
		FUNC2(thread, continuation, starting_fp);
	}
}