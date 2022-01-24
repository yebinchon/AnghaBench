#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ipc_space_t ;
typedef  TYPE_1__* ipc_port_t ;
struct TYPE_9__ {int /*<<< orphan*/  io_bits; } ;
struct TYPE_8__ {int ip_references; TYPE_5__ ip_object; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOT_PORT ; 
 int IP_CALLSTACK_MAX ; 
 TYPE_1__* IP_NULL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (uintptr_t*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,uintptr_t*,int) ; 

ipc_port_t
FUNC8(
	ipc_space_t	space)
{
	ipc_port_t port;

	FUNC0(port = (ipc_port_t) FUNC2(IOT_PORT));
	if (port == IP_NULL)
		return IP_NULL;

#if     MACH_ASSERT
	uintptr_t buf[IP_CALLSTACK_MAX];
	ipc_port_callstack_init_debug(&buf[0], IP_CALLSTACK_MAX);
#endif /* MACH_ASSERT */	

	FUNC1((char *)port, sizeof(*port));
	FUNC3(&port->ip_object);
	port->ip_references = 1;
	port->ip_object.io_bits = FUNC4(TRUE, IOT_PORT, 0);

	FUNC6(port, space, 1);

#if     MACH_ASSERT
	ipc_port_init_debug(port, &buf[0], IP_CALLSTACK_MAX);
#endif  /* MACH_ASSERT */		

	return port;
}