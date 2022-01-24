#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  mach_vm_address_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ ipc_space_t ;
typedef  TYPE_1__* ipc_port_t ;
struct TYPE_4__ {int /*<<< orphan*/  ip_context; scalar_t__ ip_strict_guard; } ;

/* Variables and functions */
 scalar_t__ IS_NULL ; 
 scalar_t__ KERN_INVALID_ARGUMENT ; 
 scalar_t__ KERN_INVALID_RIGHT ; 
 scalar_t__ KERN_INVALID_TASK ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  kGUARD_EXC_SET_CONTEXT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

kern_return_t
FUNC4(
	ipc_space_t		space,
	mach_port_name_t	name,
	mach_vm_address_t	context)
{
	ipc_port_t port;
	kern_return_t kr;

	if (space == IS_NULL)
		return KERN_INVALID_TASK;

	if (!FUNC0(name))
		return KERN_INVALID_RIGHT;

	kr = FUNC2(space, name, &port);
	if (kr != KERN_SUCCESS)
		return kr;

	/* port is locked and active */
	if(port->ip_strict_guard) {
		uint64_t portguard = port->ip_context;
		FUNC1(port);
		/* For strictly guarded ports, disallow overwriting context; Raise Exception */
		FUNC3(name, context, portguard, kGUARD_EXC_SET_CONTEXT);
		return KERN_INVALID_ARGUMENT;
	}

	port->ip_context = context;

	FUNC1(port);
	return KERN_SUCCESS;
}