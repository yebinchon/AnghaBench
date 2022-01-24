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
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;

/* Variables and functions */
 int EXCEPTION_DEFAULT ; 
 int EXC_MASK_ALL ; 
 int EXC_MASK_RPC_ALERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_SUCCESS ; 
 int MACH_EXCEPTION_CODES ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  ux_handler_port ; 

void
FUNC5(void)
{
	ipc_port_t ux_handler_send_right = FUNC3(ux_handler_port);

	if (!FUNC0(ux_handler_send_right))
		FUNC4("Couldn't allocate send right for ux_handler_port!\n");

	kern_return_t kr = KERN_SUCCESS;

	/*
	 * Consumes 1 send right.
	 *
	 * Instruments uses the RPC_ALERT port, so don't register for that.
	 */
	kr = FUNC2(FUNC1(),
	                              EXC_MASK_ALL & ~(EXC_MASK_RPC_ALERT),
	                              ux_handler_send_right,
	                              EXCEPTION_DEFAULT | MACH_EXCEPTION_CODES,
	                              0);

	if (kr != KERN_SUCCESS)
		FUNC4("host_set_exception_ports failed to set ux_handler! %d", kr);
}