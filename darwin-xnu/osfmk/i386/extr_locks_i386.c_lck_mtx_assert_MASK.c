#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ thread_t ;
struct TYPE_6__ {scalar_t__ lck_mtx_owner; } ;
typedef  TYPE_1__ lck_mtx_t ;

/* Variables and functions */
 unsigned int LCK_MTX_ASSERT_NOTOWNED ; 
 unsigned int LCK_MTX_ASSERT_OWNED ; 
 int LCK_MTX_ILOCKED_MSK ; 
 int LCK_MTX_MLOCKED_MSK ; 
 int LCK_MTX_TAG_INDIRECT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*) ; 

__attribute__((noinline))
void
FUNC5(
	lck_mtx_t 	*lock,
	unsigned int 	type)
{
	thread_t thread, owner;
	uint32_t state;

	thread = FUNC1();
	state = FUNC3(lock);

	if (state == LCK_MTX_TAG_INDIRECT) {
		FUNC2(&lock, &state);
	}

	owner = (thread_t)lock->lck_mtx_owner;

	if (type == LCK_MTX_ASSERT_OWNED) {
		if (owner != thread || !(state & (LCK_MTX_ILOCKED_MSK | LCK_MTX_MLOCKED_MSK)))
			FUNC4("mutex (%p) not owned\n", lock);
	} else {
		FUNC0 (type == LCK_MTX_ASSERT_NOTOWNED);
		if (owner == thread)
			FUNC4("mutex (%p) owned\n", lock);
	}
}