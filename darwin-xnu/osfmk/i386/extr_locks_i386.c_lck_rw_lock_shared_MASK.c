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
typedef  int uint32_t ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ lck_rw_t ;
struct TYPE_7__ {int /*<<< orphan*/  rwlock_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTRACE_RW_SHARED ; 
 int LCK_RW_INTERLOCK ; 
 scalar_t__ LCK_RW_SHARED_READER ; 
 int LCK_RW_WANT_EXCL ; 
 int LCK_RW_WANT_UPGRADE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LS_LCK_RW_LOCK_SHARED_ACQUIRE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_4__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  memory_order_acquire_smp ; 

void
FUNC7(lck_rw_t *lock)
{
	uint32_t	data, prev;

	FUNC5()->rwlock_count++;
	for ( ; ; ) {
		data = FUNC2(&lock->data, &prev, memory_order_acquire_smp);
		if (data & (LCK_RW_WANT_EXCL | LCK_RW_WANT_UPGRADE | LCK_RW_INTERLOCK)) {
			FUNC1();
			FUNC6(lock);
			break;
		}
		data += LCK_RW_SHARED_READER;
		if (FUNC3(&lock->data, prev, data, memory_order_acquire_smp))
			break;
		FUNC4();
	}
#if	CONFIG_DTRACE
	LOCKSTAT_RECORD(LS_LCK_RW_LOCK_SHARED_ACQUIRE, lock, DTRACE_RW_SHARED);
#endif	/* CONFIG_DTRACE */
	return;
}