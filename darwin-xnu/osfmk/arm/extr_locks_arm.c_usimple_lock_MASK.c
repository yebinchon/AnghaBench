#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* usimple_lock_t ;
typedef  int /*<<< orphan*/  simple_lock_t ;
typedef  int /*<<< orphan*/  pc_t ;
struct TYPE_7__ {int /*<<< orphan*/  lck_spin_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  LockTimeOut ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC8(
	     usimple_lock_t l)
{
#ifndef	MACHINE_SIMPLE_LOCK
	pc_t            pc;

	FUNC0(pc, l);
	FUNC1(FUNC7(l, pc));

	if (!FUNC3(&l->lck_spin_data, LockTimeOut))	/* Try to get the lock
							 * with a timeout */
		FUNC4("simple lock deadlock detection - l=%p, cpu=%d, ret=%p", &l, FUNC2(), pc);

	FUNC1(FUNC6(l, pc));
#else
	simple_lock((simple_lock_t) l);
#endif
}