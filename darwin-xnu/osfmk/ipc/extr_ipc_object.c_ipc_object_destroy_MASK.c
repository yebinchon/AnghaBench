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
typedef  int mach_msg_type_name_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;

/* Variables and functions */
 scalar_t__ IOT_PORT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  MACH_MSG_TYPE_PORT_RECEIVE 130 
#define  MACH_MSG_TYPE_PORT_SEND 129 
#define  MACH_MSG_TYPE_PORT_SEND_ONCE 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7(
	ipc_object_t		object,
	mach_msg_type_name_t	msgt_name)
{
	FUNC1(FUNC0(object));
	FUNC1(FUNC2(object) == IOT_PORT);

	switch (msgt_name) {
	    case MACH_MSG_TYPE_PORT_SEND:
		FUNC5((ipc_port_t) object);
		break;

	    case MACH_MSG_TYPE_PORT_SEND_ONCE:
		FUNC3((ipc_port_t) object);
		break;

	    case MACH_MSG_TYPE_PORT_RECEIVE:
		FUNC4((ipc_port_t) object);
		break;

	    default:
		FUNC6("ipc_object_destroy: strange rights");
	}
}