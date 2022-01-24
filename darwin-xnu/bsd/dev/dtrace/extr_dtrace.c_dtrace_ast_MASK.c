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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  dtrace_state_t ;

/* Variables and functions */
 int DTRACE_NCLIENTS ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  dtrace_wake_clients ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(void)
{
	int i;
	uint32_t clients = FUNC0(&dtrace_wake_clients, 0);
	if (clients == 0)
		return;
	/**
	 * We disable preemption here to be sure that we won't get
	 * interrupted by a wakeup to a thread that is higher
	 * priority than us, so that we do issue all wakeups
	 */
	FUNC1();
	for (i = 0; i < DTRACE_NCLIENTS; i++) {
		if (clients & (1 << i)) {
			dtrace_state_t *state = FUNC2(i);
			if (state) {
				FUNC4(state);
			}

		}
	}
	FUNC3();
}