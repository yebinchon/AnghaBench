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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ ipc_space_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 scalar_t__ IS_NULL ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_INVALID_NAME ; 
 scalar_t__ KERN_INVALID_TASK ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kGUARD_EXC_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  kGUARD_EXC_INVALID_NAME ; 
 int /*<<< orphan*/  kGUARD_EXC_INVALID_RIGHT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC5(
	ipc_space_t		space,
	mach_port_name_t	name,
	uint64_t		guard,
	boolean_t		strict)
{
	kern_return_t		kr;
	ipc_port_t		port;

	if (space == IS_NULL)
		return KERN_INVALID_TASK;

	if (!FUNC0(name))
		return KERN_INVALID_NAME;

	/* Guard can be applied only to receive rights */
	kr = FUNC2(space, name, &port);
	if (kr != KERN_SUCCESS) {
		FUNC3(name, 0, 0,
		                          ((KERN_INVALID_NAME == kr) ?
		                           kGUARD_EXC_INVALID_NAME :
		                           kGUARD_EXC_INVALID_RIGHT));
		return kr;
	}

	/* Port locked and active */
	kr = FUNC4(port, guard, strict);
	FUNC1(port);

	if (KERN_INVALID_ARGUMENT == kr) {
		FUNC3(name, 0, 0, kGUARD_EXC_INVALID_ARGUMENT);
	}

	return kr;
}