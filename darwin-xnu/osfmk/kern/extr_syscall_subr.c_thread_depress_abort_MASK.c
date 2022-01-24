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
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_6__ {int sched_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_NOT_DEPRESSED ; 
 int TH_SFLAG_DEPRESSED_MASK ; 
 int TH_SFLAG_POLLDEPRESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

kern_return_t
FUNC6(thread_t thread)
{
	kern_return_t result = KERN_NOT_DEPRESSED;

	spl_t s = FUNC1();
	FUNC4(thread);

	FUNC0((thread->sched_flags & TH_SFLAG_DEPRESSED_MASK) != TH_SFLAG_DEPRESSED_MASK);

	/*
	 * User-triggered depress-aborts should not get out
	 * of the poll-depress, but they should cancel a regular depress.
	 */
	if ((thread->sched_flags & TH_SFLAG_POLLDEPRESS) == 0) {
		result = FUNC3(thread);
	}

	FUNC5(thread);
	FUNC2(s);

	return result;
}