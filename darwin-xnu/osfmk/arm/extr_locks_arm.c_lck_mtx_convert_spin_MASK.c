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
typedef  scalar_t__ thread_t ;
typedef  int /*<<< orphan*/  lck_mtx_t ;

/* Variables and functions */
 uintptr_t ARM_LCK_WAITERS ; 
 uintptr_t LCK_ILOCK ; 
 scalar_t__ LCK_MTX_SPIN_TAG ; 
 scalar_t__ FUNC0 (uintptr_t) ; 
 uintptr_t LCK_MTX_THREAD_MASK ; 
 uintptr_t FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 uintptr_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,uintptr_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 

void
FUNC9(lck_mtx_t *lock)
{
	thread_t	thread = FUNC2();
	uintptr_t	state;
	int			waiters;

	state = FUNC6(lock);
	if (FUNC0(state) == thread)
		return;		// Already owned as mutex, return
	if ((state & LCK_ILOCK) == 0 || (FUNC0(state) != (thread_t)LCK_MTX_SPIN_TAG))
		FUNC8("lck_mtx_convert_spin: Not held as spinlock (%p)", lock);
	state &= ~(LCK_MTX_THREAD_MASK);		// Clear the spin tag
	FUNC7(lock, state);
	waiters = FUNC5(lock);	// Acquire to manage priority boosts
	state = FUNC1(thread);
	if (waiters != 0)
		state |= ARM_LCK_WAITERS;
#if __SMP__
	state |= LCK_ILOCK;
	ordered_store_mtx(lock, state);			// Set ownership
	interlock_unlock(lock);					// Release interlock, enable preemption
#else
	FUNC7(lock, state);			// Set ownership
	FUNC3();
#endif
}