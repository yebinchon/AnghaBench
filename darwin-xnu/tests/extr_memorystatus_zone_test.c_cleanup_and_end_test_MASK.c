#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int num_zones; int /*<<< orphan*/ * zone_names; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/ * child_pids ; 
 TYPE_1__ current_test ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ds_signal ; 
 int /*<<< orphan*/ * ds_timer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int num_children ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * session ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int test_ending ; 
 int /*<<< orphan*/  test_ending_mtx ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  within_dispatch_signal_handler ; 
 int /*<<< orphan*/  within_dispatch_timer_handler ; 
 int /*<<< orphan*/ * zone_info_array ; 

__attribute__((used)) static void FUNC12(void)
{
	int i;

	/*
	 * The atend handler executes on a different dispatch queue.
	 * We want to do the cleanup only once.
	 */
	FUNC8(&test_ending_mtx);
	if (test_ending) {
		FUNC9(&test_ending_mtx);
		return;
	}
	test_ending = true;
	FUNC9(&test_ending_mtx);

	FUNC0("Number of processes spawned: %d", num_children);
	FUNC0("Cleaning up...");

	/* Disable the timer that queries and prints zone info periodically */
	if (ds_timer != NULL && !within_dispatch_timer_handler) {
		FUNC1(ds_timer);
	}

	/* Disable signal handler that spawns child processes, only if we're not in the event handler's context */
	if (ds_signal != NULL && !within_dispatch_signal_handler) {
		FUNC2(ds_signal);
	}

	/* Kill all the child processes that were spawned */
	for (i = 0; i < num_children; i++) {
		FUNC3(child_pids[i], SIGKILL);
		/*
		 * Sleep between kills to avoid hogging the VM map entries zone lock (on the task_terminate path).
		 * Without this we were seeing hw_lock_bit timeouts in BATS.
		 */
		FUNC10(1);
	}
	for (i = 0; i < num_children; i++) {
		int status = 0;
		if (FUNC11(child_pids[i], &status, 0) < 0) {
			FUNC0("waitpid returned status %d", status);
		}
	}
	FUNC10(1);

	/* Force zone_gc before starting test for another zone or exiting */
	FUNC6(FUNC5());

	/* End ktrace session */
	if (session != NULL) {
		FUNC4(session, 1);
	}

	for (i = 0; i < current_test.num_zones; i++) {
		FUNC7(&(current_test.zone_names[i]), &(zone_info_array[i]));
	}
}