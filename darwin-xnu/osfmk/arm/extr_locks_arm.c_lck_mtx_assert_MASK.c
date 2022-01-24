#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ thread_t ;
typedef  int /*<<< orphan*/  lck_mtx_t ;

/* Variables and functions */
 unsigned int LCK_MTX_ASSERT_NOTOWNED ; 
 unsigned int LCK_MTX_ASSERT_OWNED ; 
 scalar_t__ LCK_MTX_SPIN_TAG ; 
 scalar_t__ FUNC0 (uintptr_t) ; 
 scalar_t__ FUNC1 () ; 
 uintptr_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 

void
FUNC4(lck_mtx_t *lock, unsigned int type)
{
	thread_t	thread, holder;
	uintptr_t	state;

	state = FUNC2(lock);
	holder = FUNC0(state);
	if (holder == (thread_t)LCK_MTX_SPIN_TAG) {
			// Lock is held in spin mode, owner is unknown.
		return;	// Punt
	}
	thread = FUNC1();
	if (type == LCK_MTX_ASSERT_OWNED) {
		if (thread != holder)
			FUNC3("lck_mtx_assert(): mutex (%p) owned", lock);
	} else if (type == LCK_MTX_ASSERT_NOTOWNED) {
		if (thread == holder)
			FUNC3("lck_mtx_assert(): mutex (%p) not owned", lock);
	} else
		FUNC3("lck_mtx_assert(): invalid arg (%u)", type);
}