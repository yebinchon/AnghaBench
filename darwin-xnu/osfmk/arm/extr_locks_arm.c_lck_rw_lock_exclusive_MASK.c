#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
struct TYPE_15__ {int /*<<< orphan*/  lck_rw_data; } ;
typedef  TYPE_2__ lck_rw_t ;
struct TYPE_14__ {int /*<<< orphan*/  rwlock_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTRACE_RW_EXCL ; 
 int /*<<< orphan*/  FALSE ; 
 int LCK_RW_INTERLOCK ; 
 int LCK_RW_SHARED_MASK ; 
 int LCK_RW_WANT_EXCL ; 
 int LCK_RW_WANT_UPGRADE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LS_LCK_RW_LOCK_EXCL_ACQUIRE ; 
 TYPE_1__* THREAD_NULL ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  memory_order_acquire_smp ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_1__* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*) ; 

void
FUNC8(lck_rw_t *lock)
{
	thread_t	thread = FUNC3();

	thread->rwlock_count++;
	if (FUNC2(&lock->lck_rw_data,
		(LCK_RW_SHARED_MASK | LCK_RW_WANT_EXCL | LCK_RW_WANT_UPGRADE | LCK_RW_INTERLOCK),
		LCK_RW_WANT_EXCL, memory_order_acquire_smp, FALSE)) {
#if	CONFIG_DTRACE
		LOCKSTAT_RECORD(LS_LCK_RW_LOCK_EXCL_ACQUIRE, lock, DTRACE_RW_EXCL);
#endif	/* CONFIG_DTRACE */
	} else
		FUNC4(lock);
#if MACH_ASSERT
	thread_t owner = ordered_load_rw_owner(lock);
	assertf(owner == THREAD_NULL, "state=0x%x, owner=%p", ordered_load_rw(lock), owner);
#endif
	FUNC7(lock, thread);
}