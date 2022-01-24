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
struct TYPE_4__ {scalar_t__ type; int /*<<< orphan*/  hwlock; } ;
typedef  TYPE_1__ lck_spin_t ;

/* Variables and functions */
 scalar_t__ LCK_SPIN_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*) ; 

void
FUNC2(lck_spin_t *lock)
{
#if	DEVELOPMENT || DEBUG
	if (lock->type != LCK_SPIN_TYPE)
		panic("Invalid spinlock %p", lock);
#endif	// DEVELOPMENT || DEBUG
	FUNC0(&lock->hwlock);
}