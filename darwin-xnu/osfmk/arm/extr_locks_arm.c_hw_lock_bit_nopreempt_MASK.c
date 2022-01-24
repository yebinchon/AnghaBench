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
typedef  int /*<<< orphan*/  hw_lock_bit_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOCK_PANIC_TIMEOUT ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 

void
FUNC4(hw_lock_bit_t *lock, unsigned int bit)
{
	if (FUNC0(FUNC1() == 0))
		FUNC3("Attempt to take no-preempt bitlock %p in preemptible context", lock);
	if (FUNC2(lock, bit, LOCK_PANIC_TIMEOUT))
		return;
#if	__SMP__
	panic("hw_lock_bit_nopreempt(): timed out (%p)", lock);
#else
	FUNC3("hw_lock_bit_nopreempt(): interlock held (%p)", lock);
#endif
}