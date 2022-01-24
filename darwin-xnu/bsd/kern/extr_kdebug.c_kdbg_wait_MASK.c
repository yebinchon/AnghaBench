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
typedef  int uint64_t ;
typedef  int boolean_t ;
struct TYPE_2__ {scalar_t__ kds_inuse_count; } ;

/* Variables and functions */
 int FALSE ; 
 int NSEC_PER_MSEC ; 
 int /*<<< orphan*/  THREAD_ABORTSAFE ; 
 int THREAD_AWAKENED ; 
 int /*<<< orphan*/  FUNC0 (int,int*) ; 
 TYPE_1__ kd_ctrl_page ; 
 int kds_waiter ; 
 int /*<<< orphan*/  kdw_spin_lock ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 
 scalar_t__ n_storage_threshold ; 
 int /*<<< orphan*/  FUNC9 (int,int*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static boolean_t
FUNC11(uint64_t timeout_ms, boolean_t locked_wait)
{
	int wait_result = THREAD_AWAKENED;
	uint64_t abstime = 0;

	FUNC1();

	if (timeout_ms != 0) {
		uint64_t ns = timeout_ms * NSEC_PER_MSEC;
		FUNC9(ns,  &abstime);
		FUNC0(abstime, &abstime);
	}

	boolean_t s = FUNC8(FALSE);
	if (!s) {
		FUNC10("kdbg_wait() called with interrupts disabled");
	}
	FUNC4(kdw_spin_lock);

	if (!locked_wait) {
		/* drop the mutex to allow others to access trace */
		FUNC3();
	}

	while (wait_result == THREAD_AWAKENED &&
	       kd_ctrl_page.kds_inuse_count < n_storage_threshold)
	{
		kds_waiter = 1;

		if (abstime) {
			wait_result = FUNC6(kdw_spin_lock, 0, &kds_waiter, THREAD_ABORTSAFE, abstime);
		} else {
			wait_result = FUNC5(kdw_spin_lock, 0, &kds_waiter, THREAD_ABORTSAFE);
		}

		kds_waiter = 0;
	}

	/* check the count under the spinlock */
	boolean_t threshold_exceeded = (kd_ctrl_page.kds_inuse_count >= n_storage_threshold);

	FUNC7(kdw_spin_lock);
	FUNC8(s);

	if (!locked_wait) {
		/* pick the mutex back up again */
		FUNC2();
	}

	/* write out whether we've exceeded the threshold */
	return threshold_exceeded;
}