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
struct TYPE_9__ {int /*<<< orphan*/  mutex_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int LCK_MTX_ILOCKED_MSK ; 
 int LCK_MTX_MLOCKED_MSK ; 
 int LCK_MTX_WAITERS_MSK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 void FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  memory_order_acquire_smp ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,uintptr_t) ; 

__attribute__((noinline))
void
FUNC9(
	lck_mtx_t       *lock)
{
	uint32_t prev, state;

	FUNC4();
	state = FUNC7(lock);

	/*
	 * Fast path only if the mutex is not held
	 * interlock is not contended and there are no waiters.
	 * Indirect mutexes will fall through the slow path as
	 * well as destroyed mutexes.
	 */

	prev = state & ~(LCK_MTX_ILOCKED_MSK | LCK_MTX_MLOCKED_MSK | LCK_MTX_WAITERS_MSK);
	state = prev | LCK_MTX_ILOCKED_MSK | LCK_MTX_MLOCKED_MSK;

	FUNC2();
	if (!FUNC0(&lock->lck_mtx_state, prev, state, memory_order_acquire_smp, FALSE)) {
		FUNC3();
		return FUNC6(lock);
	}

	/* mutex acquired, interlock acquired and preemption disabled */

	thread_t thread = FUNC1();
	/* record owner of mutex */
	FUNC8(lock, (uintptr_t)thread);

#if MACH_LDEBUG
	if (thread) {
		thread->mutex_count++;          /* lock statistic */
	}
#endif

	/* release interlock and re-enable preemption */
	FUNC5(lock, state, FALSE);
}