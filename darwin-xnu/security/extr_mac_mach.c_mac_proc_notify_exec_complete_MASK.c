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
struct proc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct proc*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  proc_notify_exec_complete ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC3(struct proc *proc)
{
	thread_t thread = FUNC1();

	/*
	 * Since this MAC hook was designed to support upcalls, make sure the hook
	 * is called with kernel importance propagation enabled so any daemons
	 * can get any appropriate importance donations.
	 */
	FUNC2(thread, TRUE);
	FUNC0(proc_notify_exec_complete, proc);
	FUNC2(thread, FALSE);
}