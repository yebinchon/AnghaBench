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
typedef  int /*<<< orphan*/  proc_t ;

/* Variables and functions */
 int EBUSY ; 
 int EPERM ; 
 scalar_t__ KTRACE_STATE_BG ; 
 scalar_t__ KTRACE_STATE_FG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ktrace_active_mask ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ ktrace_bg_unique_id ; 
 int ktrace_owner_kernel ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ ktrace_owning_unique_id ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ ktrace_state ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(uint32_t config_mask)
{
	FUNC4();
	FUNC0(config_mask != 0);

	proc_t p = FUNC1();

	/* if process clearly owns ktrace, allow */
	if (FUNC7(p) == ktrace_owning_unique_id) {
		ktrace_active_mask |= config_mask;
		return 0;
	}

	/* background configure while foreground is active is not allowed */
	if (FUNC7(p) == ktrace_bg_unique_id &&
	    ktrace_state == KTRACE_STATE_FG)
	{
		return EBUSY;
	}

	FUNC5();

	/* allow process to gain control when unowned or background */
	if (ktrace_owning_unique_id == 0 || ktrace_state == KTRACE_STATE_BG) {
		if (!FUNC3(FUNC2())) {
			return EPERM;
		}

		ktrace_owner_kernel = false;
		FUNC6(p);
		ktrace_active_mask |= config_mask;
		return 0;
	}

	/* owned by an existing, different process */
	return EBUSY;
}