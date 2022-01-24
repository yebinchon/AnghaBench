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
typedef  TYPE_1__* usimple_lock_t ;
typedef  int /*<<< orphan*/  simple_lock_t ;
typedef  int /*<<< orphan*/  pc_t ;
struct TYPE_6__ {int /*<<< orphan*/  lck_spin_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

unsigned int
FUNC6(
		 usimple_lock_t l)
{
#ifndef	MACHINE_SIMPLE_LOCK
	pc_t            pc;
	unsigned int    success;

	FUNC0(pc, l);
	FUNC1(FUNC5(l, pc));
	if ((success = FUNC2(&l->lck_spin_data))) {
		FUNC1(FUNC4(l, pc));
	}
	return success;
#else
	return (simple_lock_try((simple_lock_t) l));
#endif
}