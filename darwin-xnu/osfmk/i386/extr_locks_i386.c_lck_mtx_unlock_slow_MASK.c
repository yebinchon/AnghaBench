#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  TYPE_1__* thread_t ;
struct TYPE_14__ {int /*<<< orphan*/  lck_mtx_owner; } ;
typedef  TYPE_2__ lck_mtx_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_13__ {int /*<<< orphan*/  mutex_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int LCK_MTX_ILOCKED_MSK ; 
 int LCK_MTX_MLOCKED_MSK ; 
 int LCK_MTX_PROMOTED_MSK ; 
 int LCK_MTX_SPIN_MSK ; 
 int LCK_MTX_TAG_INDIRECT ; 
 scalar_t__ LCK_MTX_WAITER ; 
 int LCK_MTX_WAITERS_MSK ; 
 scalar_t__ FUNC0 (int) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int*) ; 
 void FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 void FUNC6 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 

__attribute__((noinline))
void
FUNC10(
	lck_mtx_t	*lock)
{
	thread_t	thread;
	uint32_t	state, prev;
	boolean_t	indirect = FALSE;

	state = FUNC7(lock);

	/* Is this an indirect mutex? */
	if (FUNC0(state == LCK_MTX_TAG_INDIRECT)) {
		indirect = FUNC2(&lock, &state);
	}

	thread = FUNC1();

#if DEVELOPMENT | DEBUG
	thread_t owner = (thread_t)lock->lck_mtx_owner;
	if(__improbable(owner != thread))
		return lck_mtx_owner_check_panic(lock);
#endif

	/* check if it is held as a spinlock */
	if (FUNC0((state & LCK_MTX_MLOCKED_MSK) == 0))
		goto unlock;

	FUNC3(lock, LCK_MTX_MLOCKED_MSK, &state);

unlock:
	/* preemption disabled, interlock held and mutex not held */

	/* clear owner */
	FUNC8(lock, 0);
	/* keep original state in prev for later evaluation */
	prev = state;
	/* release interlock, promotion and clear spin flag */
	state &= (~(LCK_MTX_ILOCKED_MSK | LCK_MTX_SPIN_MSK | LCK_MTX_PROMOTED_MSK));
	if ((state & LCK_MTX_WAITERS_MSK))
		state -= LCK_MTX_WAITER;	/* decrement waiter count */
	FUNC9(lock, state);		/* since I own the interlock, I don't need an atomic update */

#if	MACH_LDEBUG
	/* perform lock statistics after drop to prevent delay */
	if (thread)
		thread->mutex_count--;		/* lock statistic */
#endif	/* MACH_LDEBUG */

	/* check if there are waiters to wake up or priority to drop */
	if ((prev & (LCK_MTX_PROMOTED_MSK | LCK_MTX_WAITERS_MSK)))
		return FUNC6(lock, prev, indirect);

	/* re-enable preemption */
	FUNC5(lock, FALSE);

	return;
}