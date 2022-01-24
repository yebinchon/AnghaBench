#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  mach_vm_offset_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_12__ {scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ABORTED ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  KERN_TERMINATED ; 
 TYPE_1__* THREAD_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

kern_return_t
FUNC8(
	thread_t			thread,
	mach_vm_offset_t	tsd_base)
{
	kern_return_t		result = KERN_SUCCESS;

	if (thread == THREAD_NULL)
		return (KERN_INVALID_ARGUMENT);

	FUNC3(thread);

	if (thread->active) {
		if (thread != FUNC0()) {
			FUNC2(thread);

			FUNC4(thread);

			if (FUNC6(thread, TRUE)) {
				FUNC3(thread);
				result = FUNC1(thread, tsd_base);
				FUNC7(thread);
			}
			else {
				FUNC3(thread);
				result = KERN_ABORTED;
			}

			FUNC5(thread);
		}
		else
			result = FUNC1(thread, tsd_base);
	}
	else
		result = KERN_TERMINATED;

	FUNC4(thread);

	return (result);
}