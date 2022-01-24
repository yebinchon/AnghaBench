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
typedef  int /*<<< orphan*/  hw_lock_bit_t ;
typedef  unsigned int boolean_t ;

/* Variables and functions */
 unsigned int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  LS_LCK_SPIN_LOCK_ACQUIRE ; 
 unsigned int TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  memory_order_acquire ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

unsigned int
FUNC6(hw_lock_bit_t *lock, unsigned int bit)
{
	uint32_t	mask = (1 << bit);
#if	!__SMP__
	uint32_t	state;
#endif
	boolean_t	success = FALSE;

	FUNC1();
#if	__SMP__
	// TODO: consider weak (non-looping) atomic test-and-set
	success = atomic_test_and_set32(lock, mask, mask, memory_order_acquire, FALSE);
#else
	state = FUNC4(lock);
	if (!(mask & state)) {
		FUNC5(lock, state | mask);
		success = TRUE;
	}
#endif	// __SMP__
	if (!success)
		FUNC2();

#if CONFIG_DTRACE
	if (success)
		LOCKSTAT_RECORD(LS_LCK_SPIN_LOCK_ACQUIRE, lock, bit);
#endif

	return success;
}