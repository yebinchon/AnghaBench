#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ thread_t ;
struct TYPE_8__ {int /*<<< orphan*/  lck_rw_data; } ;
typedef  TYPE_1__ lck_rw_t ;
struct TYPE_9__ {int /*<<< orphan*/  rwlock_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTRACE_RW_SHARED ; 
 int LCK_RW_INTERLOCK ; 
 scalar_t__ LCK_RW_SHARED_READER ; 
 int LCK_RW_WANT_EXCL ; 
 int LCK_RW_WANT_UPGRADE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LS_LCK_RW_LOCK_SHARED_ACQUIRE ; 
 scalar_t__ THREAD_NULL ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_6__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  memory_order_acquire_smp ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 

void
FUNC10(lck_rw_t *lock)
{
	uint32_t	data, prev;

	FUNC6()->rwlock_count++;
	for ( ; ; ) {
		data = FUNC3(&lock->lck_rw_data, &prev, memory_order_acquire_smp);
		if (data & (LCK_RW_WANT_EXCL | LCK_RW_WANT_UPGRADE | LCK_RW_INTERLOCK)) {
			FUNC2();
			FUNC7(lock);
			break;
		}
		data += LCK_RW_SHARED_READER;
		if (FUNC4(&lock->lck_rw_data, prev, data, memory_order_acquire_smp))
			break;
		FUNC5();
	}
#if MACH_ASSERT
	thread_t owner = ordered_load_rw_owner(lock);
	assertf(owner == THREAD_NULL, "state=0x%x, owner=%p", ordered_load_rw(lock), owner);
#endif
#if	CONFIG_DTRACE
	LOCKSTAT_RECORD(LS_LCK_RW_LOCK_SHARED_ACQUIRE, lock, DTRACE_RW_SHARED);
#endif	/* CONFIG_DTRACE */
	return;
}