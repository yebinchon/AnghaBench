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
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  scalar_t__ ipc_space_t ;
typedef  scalar_t__ ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IS_NULL ; 
 int /*<<< orphan*/  KERN_INVALID_CAPABILITY ; 
 int /*<<< orphan*/  KERN_INVALID_TASK ; 
 int /*<<< orphan*/  KERN_INVALID_VALUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC4(
	ipc_space_t			space,
	mach_port_name_t		name,
	ipc_port_t			poly,
	mach_msg_type_name_t		polyPoly)
{
	if (space == IS_NULL)
		return KERN_INVALID_TASK;

	if (!FUNC2(name) ||
	    !FUNC1(polyPoly))
		return KERN_INVALID_VALUE;

	if (!FUNC0((ipc_object_t) poly))
		return KERN_INVALID_CAPABILITY;

	return FUNC3(space, (ipc_object_t) poly, 
				       polyPoly, FALSE, name);
}