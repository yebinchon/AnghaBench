#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  lck_rw_type_t ;
struct TYPE_6__ {scalar_t__ lck_rw_owner; int /*<<< orphan*/  lck_rw_data; } ;
typedef  TYPE_1__ lck_rw_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int LCK_RW_INTERLOCK ; 
 int LCK_RW_PRIV_EXCL ; 
 int LCK_RW_R_WAITING ; 
 int LCK_RW_SHARED_MASK ; 
 scalar_t__ LCK_RW_SHARED_READER ; 
 int LCK_RW_WANT_EXCL ; 
 int LCK_RW_WANT_UPGRADE ; 
 int LCK_RW_W_WAITING ; 
 scalar_t__ THREAD_NULL ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  memory_order_release_smp ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

lck_rw_type_t FUNC10(lck_rw_t *lock)
{
	uint32_t	data, prev;
	boolean_t	once = FALSE;

	for ( ; ; ) {
		data = FUNC2(&lock->lck_rw_data, &prev, memory_order_release_smp);
		if (data & LCK_RW_INTERLOCK) {		/* wait for interlock to clear */
#if __SMP__
			atomic_exchange_abort();
			lck_rw_interlock_spin(lock);
			continue;
#else
			FUNC9("lck_rw_done(): Interlock locked (%p): %x", lock, data);
#endif // __SMP__
		}
		if (data & LCK_RW_SHARED_MASK) {	/* lock is held shared */
			FUNC0(lock->lck_rw_owner == THREAD_NULL, "state=0x%x, owner=%p", lock->lck_rw_data, lock->lck_rw_owner);
			data -= LCK_RW_SHARED_READER;
			if ((data & LCK_RW_SHARED_MASK) == 0)	/* if reader count has now gone to 0, check for waiters */
				goto check_waiters;
		} else {					/* if reader count == 0, must be exclusive lock */
			if (data & LCK_RW_WANT_UPGRADE) {
				data &= ~(LCK_RW_WANT_UPGRADE);
			} else {
				if (data & LCK_RW_WANT_EXCL)
					data &= ~(LCK_RW_WANT_EXCL);
				else					/* lock is not 'owned', panic */
					FUNC9("Releasing non-exclusive RW lock without a reader refcount!");
			}
			if (!once) {
				// Only check for holder and clear it once
				FUNC0(lock->lck_rw_owner == FUNC5(), "state=0x%x, owner=%p", lock->lck_rw_data, lock->lck_rw_owner);
				FUNC8(lock, THREAD_NULL);
				once = TRUE;
			}
check_waiters:
			/*
			 * test the original values to match what
			 * lck_rw_done_gen is going to do to determine
			 * which wakeups need to happen...
			 *
			 * if !(fake_lck->lck_rw_priv_excl && fake_lck->lck_w_waiting)
			 */
			if (prev & LCK_RW_W_WAITING) {
				data &= ~(LCK_RW_W_WAITING);
				if ((prev & LCK_RW_PRIV_EXCL) == 0)
					data &= ~(LCK_RW_R_WAITING);
			} else
				data &= ~(LCK_RW_R_WAITING);
		}
		if (FUNC3(&lock->lck_rw_data, prev, data, memory_order_release_smp))
			break;
		FUNC4();
	}
	return FUNC6(lock, prev);
}