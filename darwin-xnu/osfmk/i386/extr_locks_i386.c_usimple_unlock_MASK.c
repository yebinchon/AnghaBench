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
typedef  TYPE_1__* usimple_lock_t ;
typedef  int /*<<< orphan*/  simple_lock_t ;
struct TYPE_4__ {int /*<<< orphan*/  interlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC7(
	usimple_lock_t	l)
{
#ifndef	MACHINE_SIMPLE_LOCK
	FUNC0(pc);

	FUNC1(pc);
	FUNC2(FUNC6(l, pc));
#if DEVELOPMENT || DEBUG
		pltrace(TRUE);
#endif
	FUNC3(&l->interlock);
#else
	simple_unlock_rwmb((simple_lock_t)l);
#endif
}