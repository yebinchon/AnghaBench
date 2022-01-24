#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  hwlock; int /*<<< orphan*/  lck_spin_data; } ;
typedef  TYPE_1__ lck_spin_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LCK_SPIN_TYPE ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*,...) ; 

void
FUNC5(lck_spin_t *lock)
{
#if	DEVELOPMENT || DEBUG
	if ((LCK_MTX_STATE_TO_THREAD(lock->lck_spin_data) != current_thread()) && LOCK_CORRECTNESS_PANIC())
		panic("Spinlock not owned by thread %p = %lx", lock, lock->lck_spin_data);
	if (lock->type != LCK_SPIN_TYPE)
		panic("Invalid spinlock type %p", lock);
#endif	// DEVELOPMENT || DEBUG
	FUNC3(&lock->hwlock);
}