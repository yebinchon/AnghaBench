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
typedef  TYPE_1__* thread_t ;
struct TYPE_6__ {scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  AST_APC ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void
FUNC6(void)
{
	thread_t thread = FUNC1();

	FUNC5(thread);

	/*
	 * Handle the thread termination directly
	 * here instead of returning to userspace.
	 */
	FUNC0(thread->active == FALSE);
	FUNC4(thread, AST_APC);
	FUNC3(thread);

	FUNC2("thread_corpse_continue");
	/*NOTREACHED*/
}