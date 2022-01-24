#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ thread_t ;
struct TYPE_7__ {int /*<<< orphan*/  lck_mtx_data; } ;
typedef  TYPE_1__ lck_mtx_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 uintptr_t LCK_ILOCK ; 
 scalar_t__ LCK_MTX_SPIN_TAG ; 
 scalar_t__ FUNC0 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LS_LCK_MTX_UNLOCK_RELEASE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  memory_order_release_smp ; 
 uintptr_t FUNC7 (TYPE_1__*) ; 

void
FUNC8(lck_mtx_t *lock)
{
	thread_t	thread = FUNC4();
	uintptr_t	state;
	boolean_t	ilk_held = FALSE;

	FUNC6(lock);

	state = FUNC7(lock);
	if (state & LCK_ILOCK) {
		if(FUNC0(state) == (thread_t)LCK_MTX_SPIN_TAG)
			ilk_held = TRUE;	// Interlock is held by (presumably) this thread
		goto slow_case;
	}
	// Locked as a mutex
	if (FUNC3(&lock->lck_mtx_data, FUNC1(thread), 0,
					memory_order_release_smp, FALSE)) {
#if	CONFIG_DTRACE
		LOCKSTAT_RECORD(LS_LCK_MTX_UNLOCK_RELEASE, lock, 0);
#endif /* CONFIG_DTRACE */
		return;
	}
slow_case:
	FUNC5(lock, thread, ilk_held);
}