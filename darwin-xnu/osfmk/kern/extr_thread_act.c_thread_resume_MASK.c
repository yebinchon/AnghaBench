#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_7__ {scalar_t__ task; scalar_t__ user_stop_count; scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  KERN_TERMINATED ; 
 TYPE_1__* THREAD_NULL ; 
 scalar_t__ kernel_task ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

kern_return_t
FUNC3(thread_t thread)
{
	kern_return_t result = KERN_SUCCESS;

	if (thread == THREAD_NULL || thread->task == kernel_task)
		return (KERN_INVALID_ARGUMENT);

	FUNC0(thread);

	if (thread->active) {
		if (thread->user_stop_count > 0) {
			if (--thread->user_stop_count == 0)
				FUNC2(thread);
		} else {
			result = KERN_FAILURE;
		}
	} else {
		result = KERN_TERMINATED;
	}

	FUNC1(thread);

	return (result);
}