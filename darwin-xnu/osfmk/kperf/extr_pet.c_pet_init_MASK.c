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
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  PERF_PET_THREAD ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kperf_lck_grp ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ pet_initted ; 
 int /*<<< orphan*/  pet_lock ; 
 int /*<<< orphan*/  pet_thread_loop ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static kern_return_t
FUNC7(void)
{
	if (pet_initted) {
		return KERN_SUCCESS;
	}

	/* make the sync point */
	pet_lock = FUNC3(&kperf_lck_grp, NULL);
	FUNC1(pet_lock);

	/* create the thread */

	FUNC0(PERF_PET_THREAD, 0);
	thread_t t;
	kern_return_t kr = FUNC2(pet_thread_loop, NULL, &t);
	if (kr != KERN_SUCCESS) {
		FUNC4(pet_lock, &kperf_lck_grp);
		return kr;
	}

	FUNC6(t, "kperf sampling");
	/* let the thread hold the only reference */
	FUNC5(t);

	pet_initted = TRUE;

	return KERN_SUCCESS;
}