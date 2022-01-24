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
struct kperf_sample {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pet_initted ; 
 int /*<<< orphan*/  pet_lock ; 
 int /*<<< orphan*/  pet_running ; 
 int /*<<< orphan*/ * pet_sample ; 
 int /*<<< orphan*/ * pet_tasks ; 
 scalar_t__ pet_tasks_count ; 
 scalar_t__ pet_tasks_size ; 
 int /*<<< orphan*/ * pet_threads ; 
 scalar_t__ pet_threads_count ; 
 scalar_t__ pet_threads_size ; 

void
FUNC3(void)
{
	FUNC2(pet_lock, LCK_MTX_ASSERT_OWNED);

	if (!pet_initted) {
		return;
	}

	if (pet_tasks != NULL) {
		FUNC0(pet_tasks_size != 0);
		FUNC1(pet_tasks, pet_tasks_size);

		pet_tasks = NULL;
		pet_tasks_size = 0;
		pet_tasks_count = 0;
	}

	if (pet_threads != NULL) {
		FUNC0(pet_threads_size != 0);
		FUNC1(pet_threads, pet_threads_size);

		pet_threads = NULL;
		pet_threads_size = 0;
		pet_threads_count = 0;
	}

	if (pet_sample != NULL) {
		FUNC1(pet_sample, sizeof(struct kperf_sample));
		pet_sample = NULL;
	}

	pet_running = FALSE;
}