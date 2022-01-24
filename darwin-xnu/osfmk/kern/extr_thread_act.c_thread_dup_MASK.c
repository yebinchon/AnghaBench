#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_15__ {scalar_t__ affinity_set; scalar_t__ active; } ;

/* Variables and functions */
 scalar_t__ AFFINITY_SET_NULL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KERN_ABORTED ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  KERN_TERMINATED ; 
 TYPE_1__* THREAD_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 

kern_return_t
FUNC9(
	thread_t	target)
{
	thread_t			self = FUNC0();
	kern_return_t		result = KERN_SUCCESS;

	if (target == THREAD_NULL || target == self)
		return (KERN_INVALID_ARGUMENT);

	FUNC4(target);

	if (target->active) {
		FUNC3(target);

		FUNC5(target);

		if (FUNC7(target, TRUE)) {
			FUNC4(target);
			result = FUNC1(self, target, FALSE);

			if (self->affinity_set != AFFINITY_SET_NULL)
				FUNC2(self, target);
			FUNC8(target);
		}
		else {
			FUNC4(target);
			result = KERN_ABORTED;
		}

		FUNC6(target);
	}
	else
		result = KERN_TERMINATED;

	FUNC5(target);

	return (result);
}