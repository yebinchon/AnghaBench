#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  spl_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_11__ {int sched_flags; int /*<<< orphan*/  at_safe_point; scalar_t__ active; } ;

/* Variables and functions */
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ KERN_TERMINATED ; 
 int /*<<< orphan*/  THREAD_INTERRUPTED ; 
 TYPE_1__* THREAD_NULL ; 
 int TH_SFLAG_ABORT ; 
 int TH_SFLAG_ABORTED_MASK ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

kern_return_t
FUNC9(
	thread_t		thread)
{
	kern_return_t	result = KERN_SUCCESS;

	if (thread == THREAD_NULL)
		return (KERN_INVALID_ARGUMENT);

	FUNC5(thread);

	if (thread->active) {
		spl_t		s = FUNC1();

		FUNC4(thread);
		if (!thread->at_safe_point ||
				FUNC0(thread, THREAD_INTERRUPTED) != KERN_SUCCESS) {
			if (!(thread->sched_flags & TH_SFLAG_ABORT)) {
				thread->sched_flags |= TH_SFLAG_ABORTED_MASK;
				FUNC7(thread);
				FUNC3(thread);
			}
		}
		FUNC8(thread);
		FUNC2(s);
	} else {
		result = KERN_TERMINATED;
	}

	FUNC6(thread);

	return (result);
}