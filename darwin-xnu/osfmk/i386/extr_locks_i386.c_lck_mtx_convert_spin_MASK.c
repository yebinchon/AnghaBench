#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ thread_t ;
struct TYPE_8__ {scalar_t__ lck_mtx_owner; } ;
typedef  TYPE_1__ lck_mtx_t ;

/* Variables and functions */
 int LCK_MTX_ILOCKED_MSK ; 
 int LCK_MTX_MLOCKED_MSK ; 
 int LCK_MTX_SPIN_MSK ; 
 int LCK_MTX_TAG_INDIRECT ; 
 int LCK_MTX_WAITERS_MSK ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,TYPE_1__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,int*) ; 
 scalar_t__ FUNC5 () ; 
 void FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int FUNC8 (TYPE_1__*) ; 

__attribute__((noinline))
void
FUNC9(
	lck_mtx_t 	*lock)
{
	uint32_t state;

	state = FUNC8(lock);

	/* Is this an indirect mutex? */
	if (FUNC0(state == LCK_MTX_TAG_INDIRECT)) {
		/* If so, take indirection */
		FUNC4(&lock, &state);
	}

	FUNC2((thread_t)lock->lck_mtx_owner == FUNC3(), "lock %p not owned by thread %p (current owner %p)", lock, FUNC3(), (thread_t)lock->lck_mtx_owner );

	if (FUNC0(state & LCK_MTX_MLOCKED_MSK)) {
		/* already owned as a mutex, just return */
		return;
	}

	FUNC1(FUNC5() > 0);
	FUNC1(state & LCK_MTX_ILOCKED_MSK);
	FUNC1(state & LCK_MTX_SPIN_MSK);

	/*
	 * Check if there are waiters to
	 * inherit their priority.
	 */
	if (FUNC0(state & LCK_MTX_WAITERS_MSK)) {
		return FUNC6(lock);
	}

	FUNC7(lock, FUNC8(lock));

	return;
}