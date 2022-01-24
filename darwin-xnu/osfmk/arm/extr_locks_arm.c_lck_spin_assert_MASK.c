#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_t ;
struct TYPE_3__ {scalar_t__ type; uintptr_t lck_spin_data; } ;
typedef  TYPE_1__ lck_spin_t ;

/* Variables and functions */
 unsigned int LCK_ASSERT_NOTOWNED ; 
 unsigned int LCK_ASSERT_OWNED ; 
 uintptr_t LCK_ILOCK ; 
 scalar_t__ LCK_SPIN_TYPE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

void
FUNC2(lck_spin_t *lock, unsigned int type)
{
	thread_t	thread, holder;
	uintptr_t	state;

	if (lock->type != LCK_SPIN_TYPE)
		FUNC1("Invalid spinlock %p", lock);

	state = lock->lck_spin_data;
	holder = (thread_t)(state & ~LCK_ILOCK);
	thread = FUNC0();
	if (type == LCK_ASSERT_OWNED) {
		if (holder == 0)
			FUNC1("Lock not owned %p = %lx", lock, state);
		if (holder != thread)
			FUNC1("Lock not owned by current thread %p = %lx", lock, state);
		if ((state & LCK_ILOCK) == 0)
			FUNC1("Lock bit not set %p = %lx", lock, state);
	} else if (type == LCK_ASSERT_NOTOWNED) {
		if (holder != 0) {
			if (holder == thread)
				FUNC1("Lock owned by current thread %p = %lx", lock, state);
			else
				FUNC1("Lock %p owned by thread %p", lock, holder);
		}
		if (state & LCK_ILOCK)
			FUNC1("Lock bit set %p = %lx", lock, state);
	} else
		FUNC1("lck_spin_assert(): invalid arg (%u)", type);
}