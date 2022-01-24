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
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,unsigned int) ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  PERF_PET_THREAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int pet_action_id ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  pet_lock ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void
FUNC6(unsigned int action_id)
{
	kern_return_t kr = FUNC3();
	if (kr != KERN_SUCCESS) {
		return;
	}

	FUNC1(pet_lock);

	FUNC0(PERF_PET_THREAD, 3, action_id);

	if (action_id == 0) {
		FUNC5();
	} else {
		FUNC4();
	}

	pet_action_id = action_id;

	FUNC2(pet_lock);
}