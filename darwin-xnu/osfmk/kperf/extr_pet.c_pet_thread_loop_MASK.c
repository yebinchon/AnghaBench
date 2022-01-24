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
typedef  int /*<<< orphan*/  wait_result_t ;
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  PERF_PET_IDLE ; 
 int /*<<< orphan*/  PERF_PET_RUN ; 
 int /*<<< orphan*/  PERF_PET_THREAD ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  pet_lock ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) __attribute__((noreturn))
static void
FUNC6(void *param, wait_result_t wr)
{
#pragma unused(param, wr)
	uint64_t work_unit_ticks;

	FUNC0(PERF_PET_THREAD, 1);

	FUNC2(pet_lock);
	for (;;) {
		FUNC0(PERF_PET_IDLE);
		FUNC4();

		FUNC0(PERF_PET_RUN);

		/* measure how long the work unit takes */
		work_unit_ticks = FUNC3();
		FUNC5();
		work_unit_ticks = FUNC3() - work_unit_ticks;

		/* re-program the timer */
		FUNC1(work_unit_ticks);
	}
}