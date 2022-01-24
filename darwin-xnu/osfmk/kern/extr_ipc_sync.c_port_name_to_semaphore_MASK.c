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
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_INVALID_CAPABILITY ; 
 scalar_t__ KERN_INVALID_NAME ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_PORT_RIGHT_SEND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SEMAPHORE_NULL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

kern_return_t
FUNC7(
	mach_port_name_t 	name,
	semaphore_t 		*semaphorep)
{
	ipc_port_t kern_port;
	kern_return_t kr;

	if (!FUNC1(name)) {
		*semaphorep = SEMAPHORE_NULL;
		return KERN_INVALID_NAME;
	}

	kr = FUNC6(FUNC4(), name, MACH_PORT_RIGHT_SEND,
				  (ipc_object_t *) &kern_port);
	if (kr != KERN_SUCCESS) {
		*semaphorep = SEMAPHORE_NULL;
		return kr;
	}
	/* have the port locked */
	FUNC2(FUNC0(kern_port));

	*semaphorep = FUNC3(kern_port);
	if (*semaphorep == SEMAPHORE_NULL) {
		/* the port is valid, but doesn't denote a semaphore */
		kr = KERN_INVALID_CAPABILITY;
	} else {
		kr = KERN_SUCCESS;
	}
	FUNC5(kern_port);

	return kr;
}