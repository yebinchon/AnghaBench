#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ thread_t ;
struct TYPE_10__ {int /*<<< orphan*/  lck_rw_data; } ;
typedef  TYPE_1__ lck_rw_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int LCK_RW_INTERLOCK ; 
 int LCK_RW_SHARED_MASK ; 
 scalar_t__ LCK_RW_SHARED_READER ; 
 int LCK_RW_WANT_UPGRADE ; 
 int LCK_RW_W_WAITING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LS_LCK_RW_LOCK_SHARED_TO_EXCL_UPGRADE ; 
 scalar_t__ THREAD_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  memory_order_acquire_smp ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 

boolean_t
FUNC13(lck_rw_t *lock)
{
	uint32_t	data, prev;

	for ( ; ; ) {
		data = FUNC3(&lock->lck_rw_data, &prev, memory_order_acquire_smp);
		if (data & LCK_RW_INTERLOCK) {
			FUNC2();
			FUNC7(lock);
			continue;
		}
		if (data & LCK_RW_WANT_UPGRADE) {
			data -= LCK_RW_SHARED_READER;
			if ((data & LCK_RW_SHARED_MASK) == 0)		/* we were the last reader */
				data &= ~(LCK_RW_W_WAITING);		/* so clear the wait indicator */
			if (FUNC4(&lock->lck_rw_data, prev, data, memory_order_acquire_smp))
				return FUNC8(lock, prev);
		} else {
			data |= LCK_RW_WANT_UPGRADE;		/* ask for WANT_UPGRADE */
			data -= LCK_RW_SHARED_READER;		/* and shed our read count */
			if (FUNC4(&lock->lck_rw_data, prev, data, memory_order_acquire_smp))
				break;
		}
		FUNC5();
	}
										/* we now own the WANT_UPGRADE */
	if (data & LCK_RW_SHARED_MASK) 		/* check to see if all of the readers are drained */
		FUNC9(lock);	/* if not, we need to go wait */
#if MACH_ASSERT
	thread_t owner = ordered_load_rw_owner(lock);
	assertf(owner == THREAD_NULL, "state=0x%x, owner=%p", ordered_load_rw(lock), owner);
#endif
	FUNC12(lock, FUNC6());
#if	CONFIG_DTRACE
	LOCKSTAT_RECORD(LS_LCK_RW_LOCK_SHARED_TO_EXCL_UPGRADE, lock, 0);
#endif	/* CONFIG_DTRACE */
	return TRUE;
}