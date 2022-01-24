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
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  mach_msg_type_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ ipc_space_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;

/* Variables and functions */
 scalar_t__ IS_NULL ; 
 scalar_t__ KERN_INVALID_RIGHT ; 
 scalar_t__ KERN_INVALID_TASK ; 
 scalar_t__ KERN_INVALID_VALUE ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC4(
	ipc_space_t		space,
	mach_port_name_t	name,
	mach_msg_type_name_t	msgt_name,
	ipc_port_t		*poly,
	mach_msg_type_name_t	*polyPoly)
{
	kern_return_t kr;

	if (space == IS_NULL)
		return KERN_INVALID_TASK;

	if (!FUNC0(msgt_name))
		return KERN_INVALID_VALUE;

	if (!FUNC1(name)) {
		/*
		 * really should copy out a dead name, if it is a send or
		 * send-once right being copied, but instead return an
		 * error for now.
		 */
		return KERN_INVALID_RIGHT;
	}

	kr = FUNC2(space, name, msgt_name, (ipc_object_t *) poly);

	if (kr == KERN_SUCCESS)
		*polyPoly = FUNC3(msgt_name);
	return kr;
}