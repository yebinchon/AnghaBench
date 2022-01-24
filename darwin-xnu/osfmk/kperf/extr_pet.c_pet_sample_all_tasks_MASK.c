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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  task_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,...) ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  ERR_TASK ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  PERF_PET_ERROR ; 
 int PERF_PET_SAMPLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pet_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pet_tasks ; 
 unsigned int pet_tasks_count ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(uint32_t idle_rate)
{
	FUNC1(pet_lock, LCK_MTX_ASSERT_OWNED);

	FUNC0(PERF_PET_SAMPLE | DBG_FUNC_START);

	kern_return_t kr = FUNC3();
	if (kr != KERN_SUCCESS) {
		FUNC0(PERF_PET_ERROR, ERR_TASK, kr);
		FUNC0(PERF_PET_SAMPLE | DBG_FUNC_END, 0);
		return;
	}

	for (unsigned int i = 0; i < pet_tasks_count; i++) {
		task_t task = pet_tasks[i];

		FUNC2(task, idle_rate);
	}

	for(unsigned int i = 0; i < pet_tasks_count; i++) {
		FUNC4(pet_tasks[i]);
	}

	FUNC0(PERF_PET_SAMPLE | DBG_FUNC_END, pet_tasks_count);
}