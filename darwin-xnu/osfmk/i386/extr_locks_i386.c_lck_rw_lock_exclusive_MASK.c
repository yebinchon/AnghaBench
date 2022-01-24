#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ lck_rw_t ;
struct TYPE_7__ {int /*<<< orphan*/  rwlock_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTRACE_RW_EXCL ; 
 int /*<<< orphan*/  FALSE ; 
 int LCK_RW_INTERLOCK ; 
 int LCK_RW_SHARED_MASK ; 
 int LCK_RW_WANT_EXCL ; 
 int LCK_RW_WANT_UPGRADE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LS_LCK_RW_LOCK_EXCL_ACQUIRE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  memory_order_acquire_smp ; 

void
FUNC4(lck_rw_t *lock)
{
	FUNC2()->rwlock_count++;
	if (FUNC1(&lock->data,
		(LCK_RW_SHARED_MASK | LCK_RW_WANT_EXCL | LCK_RW_WANT_UPGRADE | LCK_RW_INTERLOCK),
		LCK_RW_WANT_EXCL, memory_order_acquire_smp, FALSE)) {
#if	CONFIG_DTRACE
		LOCKSTAT_RECORD(LS_LCK_RW_LOCK_EXCL_ACQUIRE, lock, DTRACE_RW_EXCL);
#endif	/* CONFIG_DTRACE */
	} else
		FUNC3(lock);
}