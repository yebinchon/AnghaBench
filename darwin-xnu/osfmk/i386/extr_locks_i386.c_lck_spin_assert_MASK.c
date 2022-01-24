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
typedef  uintptr_t thread_t ;
struct TYPE_3__ {uintptr_t interlock; } ;
typedef  TYPE_1__ lck_spin_t ;

/* Variables and functions */
 unsigned int LCK_ASSERT_NOTOWNED ; 
 unsigned int LCK_ASSERT_OWNED ; 
 uintptr_t THREAD_NULL ; 
 scalar_t__ FUNC0 (int) ; 
 uintptr_t FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

void
FUNC3(lck_spin_t *lock, unsigned int type)
{
	thread_t thread, holder;
	uintptr_t state;

	if (FUNC0(type != LCK_ASSERT_OWNED && type != LCK_ASSERT_NOTOWNED)) {
		FUNC2("lck_spin_assert(): invalid arg (%u)", type);
	}

	state = lock->interlock;
	holder = (thread_t)state;
	thread = FUNC1();
	if (type == LCK_ASSERT_OWNED) {
		if (FUNC0(holder == THREAD_NULL)) {
			FUNC2("Lock not owned %p = %lx", lock, state);
		}
		if (FUNC0(holder != thread)) {
			FUNC2("Lock not owned by current thread %p = %lx", lock, state);
		}
	} else if (type == LCK_ASSERT_NOTOWNED) {
		if (FUNC0(holder != THREAD_NULL)) {
			if (holder == thread) {
				FUNC2("Lock owned by current thread %p = %lx", lock, state);
			} else {
				FUNC2("Lock %p owned by thread %p", lock, holder);
			}
		}
	}
}