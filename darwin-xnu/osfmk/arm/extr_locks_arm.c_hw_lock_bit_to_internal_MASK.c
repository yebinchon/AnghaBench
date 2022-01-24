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

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  LS_LCK_SPIN_LOCK_ACQUIRE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  memory_order_acquire ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline unsigned int
FUNC6(hw_lock_bit_t *lock, unsigned int bit, uint32_t timeout)
{
	unsigned int success = 0;
	uint32_t	mask = (1 << bit);
#if	!__SMP__
	uint32_t	state;
#endif

#if	__SMP__
	if (__improbable(!atomic_test_and_set32(lock, mask, mask, memory_order_acquire, FALSE)))
		success = hw_lock_bit_to_contended(lock, mask, timeout);
	else
		success = 1;
#else	// __SMP__
	(void)timeout;
	state = FUNC4(lock);
	if (!(mask & state)) {
		FUNC5(lock, state | mask);
		success = 1;
	}
#endif	// __SMP__

#if CONFIG_DTRACE
	if (success)
		LOCKSTAT_RECORD(LS_LCK_SPIN_LOCK_ACQUIRE, lock, bit);
#endif

	return success;
}