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
typedef  scalar_t__ kern_return_t ;
struct TYPE_11__ {int /*<<< orphan*/ * affinity_set; scalar_t__ started; scalar_t__ active; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ KERN_TERMINATED ; 
 int /*<<< orphan*/  THREAD_INTERRUPTED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__) ; 

kern_return_t
FUNC8(
	thread_t			thread)
{
	kern_return_t		result = KERN_SUCCESS;

	FUNC4(thread);

	if (thread->active) {
		thread->active = FALSE;

		FUNC0(thread);

		if (thread->started)
			FUNC1(thread, THREAD_INTERRUPTED);
		else {
			FUNC6(thread);
		}
	}
	else
		result = KERN_TERMINATED;

	if (thread->affinity_set != NULL)
		FUNC3(thread);

	FUNC5(thread);

	if (thread != FUNC2() && result == KERN_SUCCESS)
		FUNC7(thread, FALSE);

	return (result);
}