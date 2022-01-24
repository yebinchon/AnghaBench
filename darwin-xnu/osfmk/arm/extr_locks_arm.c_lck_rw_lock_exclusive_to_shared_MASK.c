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
typedef  int uint32_t ;
struct TYPE_7__ {scalar_t__ lck_rw_owner; int /*<<< orphan*/  lck_rw_data; } ;
typedef  TYPE_1__ lck_rw_t ;

/* Variables and functions */
 int LCK_RW_INTERLOCK ; 
 int LCK_RW_PRIV_EXCL ; 
 scalar_t__ LCK_RW_SHARED_READER ; 
 int LCK_RW_WANT_EXCL ; 
 int LCK_RW_WANT_UPGRADE ; 
 int LCK_RW_W_WAITING ; 
 int /*<<< orphan*/  THREAD_NULL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 void FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  memory_order_release_smp ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_1__*,int) ; 

void FUNC10(lck_rw_t *lock)
{
	uint32_t	data, prev;

	FUNC0(lock->lck_rw_owner == FUNC5(), "state=0x%x, owner=%p", lock->lck_rw_data, lock->lck_rw_owner);
	FUNC8(lock, THREAD_NULL);
	for ( ; ; ) {
		data = FUNC2(&lock->lck_rw_data, &prev, memory_order_release_smp);
		if (data & LCK_RW_INTERLOCK) {
#if __SMP__
			atomic_exchange_abort();
			lck_rw_interlock_spin(lock);	/* wait for interlock to clear */
			continue;
#else
			FUNC9("lck_rw_lock_exclusive_to_shared(): Interlock locked (%p): %x", lock, data);
#endif // __SMP__
		}
		data += LCK_RW_SHARED_READER;
		if (data & LCK_RW_WANT_UPGRADE)
			data &= ~(LCK_RW_WANT_UPGRADE);
		else
			data &= ~(LCK_RW_WANT_EXCL);
		if (!((prev & LCK_RW_W_WAITING) && (prev & LCK_RW_PRIV_EXCL)))
			data &= ~(LCK_RW_W_WAITING);
		if (FUNC3(&lock->lck_rw_data, prev, data, memory_order_release_smp))
			break;
		FUNC4();
	}
	return FUNC7(lock, prev);
}