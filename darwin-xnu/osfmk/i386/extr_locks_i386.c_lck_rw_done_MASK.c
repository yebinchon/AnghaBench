#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  lck_rw_type_t ;
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ lck_rw_t ;

/* Variables and functions */
 int LCK_RW_INTERLOCK ; 
 int LCK_RW_PRIV_EXCL ; 
 int LCK_RW_R_WAITING ; 
 int LCK_RW_SHARED_MASK ; 
 scalar_t__ LCK_RW_SHARED_READER ; 
 int LCK_RW_WANT_EXCL ; 
 int LCK_RW_WANT_UPGRADE ; 
 int LCK_RW_WANT_WRITE ; 
 int LCK_RW_W_WAITING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  memory_order_release_smp ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

lck_rw_type_t FUNC7(lck_rw_t *lock)
{
	uint32_t	data, prev;

	for ( ; ; ) {
		data = FUNC1(&lock->data, &prev, memory_order_release_smp);
		if (data & LCK_RW_INTERLOCK) {		/* wait for interlock to clear */
			FUNC0();
			FUNC5(lock);
			continue;
		}
		if (data & LCK_RW_SHARED_MASK) {
			data -= LCK_RW_SHARED_READER;
			if ((data & LCK_RW_SHARED_MASK) == 0)	/* if reader count has now gone to 0, check for waiters */
				goto check_waiters;
		} else {					/* if reader count == 0, must be exclusive lock */
			if (data & LCK_RW_WANT_UPGRADE) {
				data &= ~(LCK_RW_WANT_UPGRADE);
			} else {
				if (data & LCK_RW_WANT_WRITE)
					data &= ~(LCK_RW_WANT_EXCL);
				else					/* lock is not 'owned', panic */
					FUNC6("Releasing non-exclusive RW lock without a reader refcount!");
			}
check_waiters:
			if (prev & LCK_RW_W_WAITING) {
				data &= ~(LCK_RW_W_WAITING);
				if ((prev & LCK_RW_PRIV_EXCL) == 0)
					data &= ~(LCK_RW_R_WAITING);
			} else
				data &= ~(LCK_RW_R_WAITING);
		}
		if (FUNC2(&lock->data, prev, data, memory_order_release_smp))
			break;
		FUNC3();
	}
	return FUNC4(lock, prev);
}