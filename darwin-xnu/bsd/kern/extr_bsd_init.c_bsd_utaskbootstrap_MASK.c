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
typedef  int /*<<< orphan*/  thread_t ;
struct uthread {scalar_t__ uu_sigmask; } ;

/* Variables and functions */
 int /*<<< orphan*/  COALITION_NULL ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ PROC_NULL ; 
 int /*<<< orphan*/  TASK_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ initproc ; 
 int /*<<< orphan*/  kernproc ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(void)
{
	thread_t thread;
	struct uthread *ut;

	/*
	 * Clone the bootstrap process from the kernel process, without
	 * inheriting either task characteristics or memory from the kernel;
	 */
	thread = FUNC1(TASK_NULL, COALITION_NULL, kernproc, FALSE, TRUE);

	/* Hold the reference as it will be dropped during shutdown */
	initproc = FUNC5(1);				
#if __PROC_INTERNAL_DEBUG
	if (initproc == PROC_NULL)
		panic("bsd_utaskbootstrap: initproc not set\n");
#endif
	/*
	 * Since we aren't going back out the normal way to our parent,
	 * we have to drop the transition locks explicitly.
	 */
	FUNC6(initproc, 0);
	FUNC7(initproc, 0);

	ut = (struct uthread *)FUNC2(thread);
	ut->uu_sigmask = 0;
	FUNC0(thread);
	FUNC8(FUNC3(thread));
}