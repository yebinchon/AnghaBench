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
typedef  int /*<<< orphan*/  lck_mtx_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 uintptr_t ARM_LCK_WAITERS ; 
 uintptr_t LCK_ILOCK ; 
 uintptr_t LCK_MTX_SPIN_TAG ; 
 scalar_t__ FUNC0 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LS_LCK_MTX_LOCK_SPIN_ACQUIRE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 uintptr_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,uintptr_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC9(lck_mtx_t *lock, boolean_t allow_held_as_mutex)
{
	uintptr_t	state;

	FUNC3(lock);
	state = FUNC6(lock);
	if (FUNC0(state)) {
		if (allow_held_as_mutex)
			FUNC4(lock, FUNC2(), TRUE);
		else
			// "Always" variants can never block. If the lock is held and blocking is not allowed
			// then someone is mixing always and non-always calls on the same lock, which is
			// forbidden.
			FUNC8("Attempting to block on a lock taken as spin-always %p", lock);
		return;
	}
	state &= ARM_LCK_WAITERS;						// Preserve waiters bit
	state |= (LCK_MTX_SPIN_TAG | LCK_ILOCK);	// Add spin tag and maintain interlock
	FUNC7(lock, state);
	FUNC5();

#if	CONFIG_DTRACE
	LOCKSTAT_RECORD(LS_LCK_MTX_LOCK_SPIN_ACQUIRE, lock, 0);
#endif /* CONFIG_DTRACE */
}