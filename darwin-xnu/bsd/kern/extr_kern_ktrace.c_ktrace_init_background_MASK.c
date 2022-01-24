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
typedef  int /*<<< orphan*/  proc_t ;
typedef  int errno_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ KERN_FAILURE ; 
 scalar_t__ KTRACE_STATE_BG ; 
 scalar_t__ KTRACE_STATE_OFF ; 
 int /*<<< orphan*/  PRIV_KTRACE_BACKGROUND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  ktrace_bg_pid ; 
 int /*<<< orphan*/  ktrace_bg_unique_id ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ ktrace_state ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int should_notify_on_init ; 

__attribute__((used)) static errno_t
FUNC8(void)
{
	int err = 0;

	FUNC2();

	if ((err = FUNC5(FUNC1(), PRIV_KTRACE_BACKGROUND, 0))) {
		return err;
	}

	/*
	 * When a background tool first checks in, send a notification if ktrace
	 * is available.
	 */
	if (should_notify_on_init) {
		if (ktrace_state == KTRACE_STATE_OFF) {
			/*
			 * This notification can only fail if a process does not
			 * hold the receive right for the host special port.
			 * Return an error and don't make the current process
			 * the background tool.
			 */
			if (FUNC3() == KERN_FAILURE) {
				return EINVAL;
			}
		}
		should_notify_on_init = false;
	}

	proc_t p = FUNC0();

	ktrace_bg_unique_id = FUNC7(p);
	ktrace_bg_pid = FUNC6(p);

	if (ktrace_state == KTRACE_STATE_BG) {
		FUNC4(p);
	}

	return 0;
}