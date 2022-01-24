#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uthread_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ t_dtrace_sig; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPU_DTRACE_ILLOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NSIG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ dtrace_destructive_disallow ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(uint64_t sig)
{
	if (dtrace_destructive_disallow)
		return;

	if (sig >= NSIG) {
		FUNC0(CPU_DTRACE_ILLOP);
		return;
	}

	/*
	 * raise() has a queue depth of 1 -- we ignore all subsequent
	 * invocations of the raise() action.
	 */

	uthread_t uthread = (uthread_t)FUNC3(FUNC2());

	if (uthread && uthread->t_dtrace_sig == 0) {
		uthread->t_dtrace_sig = sig;
		FUNC1(FUNC2());
	}
}