#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* usimple_lock_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_8__ {int /*<<< orphan*/  lock_data; } ;
struct TYPE_9__ {TYPE_1__ interlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPINLOCK_TIMEOUT ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_2__*,uintptr_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 TYPE_2__* spinlock_timed_out ; 
 int /*<<< orphan*/  FUNC11 (uintptr_t) ; 

boolean_t
FUNC12(usimple_lock_t lock)
{
	if (FUNC5()) {
		FUNC9(lock);
		return TRUE;
	} else {
		uint64_t tsc_spin_start = FUNC8();
		while (!FUNC10(lock)) {
			FUNC1(NULL);
			if (FUNC6(tsc_spin_start)) {
				uint32_t lock_cpu;
				uintptr_t lowner = (uintptr_t)
						   lock->interlock.lock_data;
				spinlock_timed_out = lock;
				lock_cpu = FUNC11(lowner);
				FUNC0(FUNC2(lock_cpu), SPINLOCK_TIMEOUT);
				FUNC7("mp_safe_spin_lock() timed out, lock: %p, owner thread: 0x%lx, current_thread: %p, owner on CPU 0x%x, time: %llu",
				      lock, lowner, FUNC3(), lock_cpu, FUNC4());
			}
		}
		return FALSE;
	} 
}