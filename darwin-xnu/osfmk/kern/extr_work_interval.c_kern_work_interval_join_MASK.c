#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  thread_t ;
struct work_interval {int dummy; } ;
typedef  scalar_t__ mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ MACH_PORT_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,struct work_interval**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct work_interval*) ; 

kern_return_t
FUNC3(thread_t            thread,
                        mach_port_name_t    port_name)
{
	struct work_interval *work_interval = NULL;
	kern_return_t kr;

	if (port_name == MACH_PORT_NULL) {
		/* 'Un-join' the current work interval */
		FUNC2(thread, NULL);
		return KERN_SUCCESS;
	}

	kr = FUNC1(port_name, &work_interval);
	if (kr != KERN_SUCCESS)
		return kr;
	/* work_interval has a +1 ref */

	FUNC0(work_interval != NULL);

	FUNC2(thread, work_interval);

	/* ref was consumed by passing it to the thread */

	return KERN_SUCCESS;
}