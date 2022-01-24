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
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  scalar_t__ ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  IOT_PORT ; 
 int IP_CALLSTACK_MAX ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_PORT_TYPE_RECEIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (uintptr_t*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,uintptr_t*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC5(
	ipc_space_t		space,
	mach_port_name_t	*namep,
	ipc_port_t		*portp)
{
	ipc_port_t port;
	mach_port_name_t name;
	kern_return_t kr;

#if     MACH_ASSERT
	uintptr_t buf[IP_CALLSTACK_MAX];
	ipc_port_callstack_init_debug(&buf[0], IP_CALLSTACK_MAX);
#endif /* MACH_ASSERT */
	    
	kr = FUNC0(space, IOT_PORT,
			      MACH_PORT_TYPE_RECEIVE, 0,
			      &name, (ipc_object_t *) &port);
	if (kr != KERN_SUCCESS)
		return kr;

	/* port and space are locked */
	FUNC2(port, space, name);

#if     MACH_ASSERT
	ipc_port_init_debug(port, &buf[0], IP_CALLSTACK_MAX);
#endif  /* MACH_ASSERT */

	/* unlock space after init */
	FUNC4(space);

	*namep = name;
	*portp = port;

	return KERN_SUCCESS;
}