#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* thread_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
struct TYPE_8__ {scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  KERN_TERMINATED ; 
 int /*<<< orphan*/  THREAD_INTERRUPTED ; 
 TYPE_1__* THREAD_NULL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

kern_return_t
FUNC4(
	thread_t	thread)
{
	kern_return_t	result = KERN_SUCCESS;

	if (thread == THREAD_NULL)
		return (KERN_INVALID_ARGUMENT);

	FUNC2(thread);

	if (thread->active) {
		FUNC0(thread);
		FUNC1(thread, THREAD_INTERRUPTED);
	}
	else
		result = KERN_TERMINATED;

	FUNC3(thread);

	return (result);
}