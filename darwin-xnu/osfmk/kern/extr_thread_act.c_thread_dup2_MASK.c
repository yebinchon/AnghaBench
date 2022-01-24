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
typedef  scalar_t__ uint32_t ;
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_15__ {scalar_t__ affinity_set; scalar_t__ inspection; scalar_t__ active; } ;

/* Variables and functions */
 scalar_t__ AFFINITY_SET_NULL ; 
 int /*<<< orphan*/  KERN_ABORTED ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  KERN_TERMINATED ; 
 TYPE_1__* THREAD_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

kern_return_t
FUNC8(
	thread_t	source,
	thread_t	target)
{
	kern_return_t		result = KERN_SUCCESS;
	uint32_t		active = 0;

	if (source == THREAD_NULL || target == THREAD_NULL || target == source)
		return (KERN_INVALID_ARGUMENT);

	FUNC3(source);
	active = source->active;
	FUNC4(source);

	if (!active) {
		return KERN_TERMINATED;
	}

	FUNC3(target);

	if (target->active || target->inspection) {
		FUNC2(target);

		FUNC4(target);

		if (FUNC6(target, TRUE)) {
			FUNC3(target);
			result = FUNC0(source, target, TRUE);
			if (source->affinity_set != AFFINITY_SET_NULL)
				FUNC1(source, target);
			FUNC7(target);
		}
		else {
			FUNC3(target);
			result = KERN_ABORTED;
		}

		FUNC5(target);
	}
	else
		result = KERN_TERMINATED;

	FUNC4(target);

	return (result);
}