#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  scalar_t__ kern_return_t ;
struct TYPE_9__ {scalar_t__ task; int /*<<< orphan*/  user_stop_count; scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ KERN_TERMINATED ; 
 TYPE_1__* THREAD_NULL ; 
 TYPE_1__* FUNC0 () ; 
 scalar_t__ kernel_task ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC5(thread_t thread)
{
	kern_return_t result = KERN_SUCCESS;

	if (thread == THREAD_NULL || thread->task == kernel_task)
		return (KERN_INVALID_ARGUMENT);

	FUNC2(thread);

	if (thread->active) {
		if (thread->user_stop_count++ == 0)
			FUNC1(thread);
	} else {
		result = KERN_TERMINATED;
	}

	FUNC3(thread);

	if (thread != FUNC0() && result == KERN_SUCCESS)
		FUNC4(thread, FALSE);

	return (result);
}