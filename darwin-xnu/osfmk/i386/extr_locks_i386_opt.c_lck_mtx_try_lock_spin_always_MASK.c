#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  TYPE_1__* thread_t ;
struct TYPE_10__ {int /*<<< orphan*/  lck_mtx_state; } ;
typedef  TYPE_2__ lck_mtx_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_9__ {int /*<<< orphan*/  mutex_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int LCK_MTX_ILOCKED_MSK ; 
 int LCK_MTX_MLOCKED_MSK ; 
 int LCK_MTX_SPIN_MSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LS_LCK_MTX_TRY_SPIN_LOCK_ACQUIRE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  memory_order_acquire_smp ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,uintptr_t) ; 

__attribute__((noinline))
boolean_t
FUNC8(
	lck_mtx_t       *lock)
{
	uint32_t prev, state;

	state = FUNC6(lock);

	/*
	 * Fast path only if the mutex is not held
	 * neither as mutex nor as spin and
	 * interlock is not contended.
	 * Indirect mutexes will fall through the slow path as
	 * well as destroyed mutexes.
	 */

	/* Note LCK_MTX_SPIN_MSK is set only if LCK_MTX_ILOCKED_MSK is set */
	prev = state & ~(LCK_MTX_ILOCKED_MSK | LCK_MTX_MLOCKED_MSK);
	state = prev | LCK_MTX_ILOCKED_MSK | LCK_MTX_SPIN_MSK;

	FUNC3();
	if (!FUNC1(&lock->lck_mtx_state, prev, state, memory_order_acquire_smp, FALSE)) {
		FUNC4();
		return FUNC5(lock);
	}

	/* mutex acquired as spinlock, interlock acquired and preemption disabled */

	thread_t thread = FUNC2();
	/* record owner of mutex */
	FUNC7(lock, (uintptr_t)thread);

#if MACH_LDEBUG
	if (thread) {
		thread->mutex_count++;          /* lock statistic */
	}
#endif

#if     CONFIG_DTRACE
	LOCKSTAT_RECORD(LS_LCK_MTX_TRY_SPIN_LOCK_ACQUIRE, lock, 0);
#endif

	/* return with the interlock held and preemption disabled */
	return TRUE;
}