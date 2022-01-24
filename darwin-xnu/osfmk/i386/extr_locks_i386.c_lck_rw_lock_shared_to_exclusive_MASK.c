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
struct TYPE_7__ {int /*<<< orphan*/  data; } ;
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
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  memory_order_acquire_smp ; 

boolean_t
FUNC8(lck_rw_t *lock)
{
	uint32_t	data, prev;

	for ( ; ; ) {
		data = FUNC2(&lock->data, &prev, memory_order_acquire_smp);
		if (data & LCK_RW_INTERLOCK) {
			FUNC1();
			FUNC5(lock);
			continue;
		}
		if (data & LCK_RW_WANT_UPGRADE) {
			data -= LCK_RW_SHARED_READER;
			if ((data & LCK_RW_SHARED_MASK) == 0)		/* we were the last reader */
				data &= ~(LCK_RW_W_WAITING);		/* so clear the wait indicator */
			if (FUNC3(&lock->data, prev, data, memory_order_acquire_smp))
				return FUNC6(lock, prev);
		} else {
			data |= LCK_RW_WANT_UPGRADE;		/* ask for WANT_UPGRADE */
			data -= LCK_RW_SHARED_READER;		/* and shed our read count */
			if (FUNC3(&lock->data, prev, data, memory_order_acquire_smp))
				break;
		}
		FUNC4();
	}
						/* we now own the WANT_UPGRADE */
	if (data & LCK_RW_SHARED_MASK) 		/* check to see if all of the readers are drained */
		FUNC7(lock);	/* if not, we need to go wait */
#if	CONFIG_DTRACE
	LOCKSTAT_RECORD(LS_LCK_RW_LOCK_SHARED_TO_EXCL_UPGRADE, lock, 0);
#endif
	return TRUE;
}