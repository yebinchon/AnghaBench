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
typedef  scalar_t__ wait_result_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct mach_wait_until_trap_args {int /*<<< orphan*/  deadline; } ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  event_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ABORTED ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  THREAD_ABORTSAFE ; 
 scalar_t__ THREAD_INTERRUPTED ; 
 scalar_t__ THREAD_WAITING ; 
 int /*<<< orphan*/  TIMEOUT_URGENCY_USER_NORMAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mach_wait_until_continue ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC2(
	struct mach_wait_until_trap_args	*args)
{
	uint64_t		deadline = args->deadline;
	wait_result_t	wresult;

	wresult = FUNC0((event_t)mach_wait_until_trap, THREAD_ABORTSAFE,
						   TIMEOUT_URGENCY_USER_NORMAL, deadline, 0);
	if (wresult == THREAD_WAITING)
		wresult = FUNC1(mach_wait_until_continue);

	return ((wresult == THREAD_INTERRUPTED)? KERN_ABORTED: KERN_SUCCESS);
}