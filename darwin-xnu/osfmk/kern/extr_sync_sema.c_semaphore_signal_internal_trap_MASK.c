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
typedef  int /*<<< orphan*/  semaphore_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 scalar_t__ KERN_NOT_WAITING ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  SEMAPHORE_SIGNAL_PREPOST ; 
 int /*<<< orphan*/  THREAD_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC3(mach_port_name_t sema_name)
{
	semaphore_t	semaphore;
	kern_return_t kr;

	kr = FUNC0(sema_name, &semaphore);
	if (kr == KERN_SUCCESS) {
		kr = FUNC2(semaphore, 
				THREAD_NULL, 
				SEMAPHORE_SIGNAL_PREPOST);
		FUNC1(semaphore);
		if (kr == KERN_NOT_WAITING)
			kr = KERN_SUCCESS;
	}
	return kr;
}