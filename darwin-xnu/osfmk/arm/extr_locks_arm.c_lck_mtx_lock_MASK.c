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
typedef  int /*<<< orphan*/  thread_t ;
struct TYPE_7__ {int /*<<< orphan*/  lck_mtx_data; } ;
typedef  TYPE_1__ lck_mtx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LS_LCK_MTX_LOCK_ACQUIRE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  memory_order_acquire_smp ; 

void
FUNC7(lck_mtx_t *lock)
{
	thread_t	thread;

	FUNC6(lock);
	FUNC4(lock);
	thread = FUNC3();
	if (FUNC2(&lock->lck_mtx_data, 0, FUNC0(thread),
					memory_order_acquire_smp, FALSE)) {
#if	CONFIG_DTRACE
		LOCKSTAT_RECORD(LS_LCK_MTX_LOCK_ACQUIRE, lock, 0);
#endif /* CONFIG_DTRACE */
		return;
	}
	FUNC5(lock, thread, FALSE);
}