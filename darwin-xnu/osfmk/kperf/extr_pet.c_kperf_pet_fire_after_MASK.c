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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ lightweight_pet ; 
 int /*<<< orphan*/  pet_action_id ; 
 int /*<<< orphan*/  pet_initted ; 
 int /*<<< orphan*/  pet_running ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(void)
{
	if (!pet_initted || !pet_running) {
		return;
	}

	if (lightweight_pet) {
		FUNC0(0);
	} else {
		FUNC1(&pet_action_id);
	}
}