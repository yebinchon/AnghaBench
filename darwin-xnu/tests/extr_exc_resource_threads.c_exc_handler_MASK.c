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
typedef  int /*<<< orphan*/  mach_port_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  exception_behavior_t ;

/* Variables and functions */
 int EXCEPTION_DEFAULT ; 
 int EXC_MASK_CORPSE_NOTIFY ; 
 int EXC_MASK_CRASH ; 
 scalar_t__ KERN_SUCCESS ; 
 int MACH_EXCEPTION_CODES ; 
 int /*<<< orphan*/  MACH_MSG_SIZE_RELIABLE ; 
 int /*<<< orphan*/  MACH_MSG_TYPE_MAKE_SEND ; 
 int /*<<< orphan*/  MACH_PORT_RIGHT_RECEIVE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  mach_exc_server ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  sync_sema ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC8(void * arg)
{
#pragma unused(arg)
	kern_return_t kret;
	mach_port_t exception_port;

	kret = FUNC4(FUNC6(), MACH_PORT_RIGHT_RECEIVE, &exception_port);
	if (kret != KERN_SUCCESS)
		FUNC0("mach_port_allocate: %s (%d)", FUNC2(kret), kret);

	kret = FUNC5(FUNC6(), exception_port, exception_port, MACH_MSG_TYPE_MAKE_SEND);
	if (kret != KERN_SUCCESS)
		FUNC0("mach_port_insert_right: %s (%d)", FUNC2(kret), kret);

	kret = FUNC7(FUNC6(), EXC_MASK_CRASH | EXC_MASK_CORPSE_NOTIFY, exception_port,
	                                (exception_behavior_t)(EXCEPTION_DEFAULT | MACH_EXCEPTION_CODES), 0);
	if (kret != KERN_SUCCESS)
		FUNC0("task_set_exception_ports: %s (%d)", FUNC2(kret), kret);

	FUNC1(sync_sema);

	kret = FUNC3(mach_exc_server, MACH_MSG_SIZE_RELIABLE, exception_port, 0);
	if (kret != KERN_SUCCESS)
		FUNC0("mach_msg_server: %s (%d)", FUNC2(kret), kret);

	return NULL;
}