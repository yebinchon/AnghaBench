#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int mach_msg_type_name_t ;
typedef  TYPE_1__* ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;
struct TYPE_9__ {int /*<<< orphan*/  is_node_id; } ;
struct TYPE_8__ {int ip_srights; int ip_sorights; int /*<<< orphan*/  ip_receiver_name; int /*<<< orphan*/  ip_mscount; TYPE_2__* ip_receiver; int /*<<< orphan*/  ip_messages; int /*<<< orphan*/  ip_destination; } ;

/* Variables and functions */
 int /*<<< orphan*/  HOST_LOCAL_NODE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IP_NULL ; 
#define  MACH_MSG_TYPE_COPY_SEND 133 
#define  MACH_MSG_TYPE_MAKE_SEND 132 
#define  MACH_MSG_TYPE_MAKE_SEND_ONCE 131 
#define  MACH_MSG_TYPE_MOVE_RECEIVE 130 
#define  MACH_MSG_TYPE_MOVE_SEND 129 
#define  MACH_MSG_TYPE_MOVE_SEND_ONCE 128 
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* ipc_space_kernel ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

void
FUNC10(
	ipc_object_t		object,
	mach_msg_type_name_t	msgt_name)
{
	FUNC1(FUNC0(object));

	switch (msgt_name) {
	    case MACH_MSG_TYPE_MOVE_RECEIVE: {
		ipc_port_t port = (ipc_port_t) object;

		FUNC5(port);
		FUNC2(&port->ip_messages);
		FUNC1(FUNC4(port));
		if (port->ip_destination != IP_NULL) {
			FUNC1(port->ip_receiver == ipc_space_kernel);

			/* relevant part of ipc_port_clear_receiver */
			FUNC8(port, 0);

			port->ip_receiver_name = MACH_PORT_NULL;
			port->ip_destination = IP_NULL;
		}
		FUNC3(&port->ip_messages);
		FUNC7(port);
		break;
	    }

	    case MACH_MSG_TYPE_COPY_SEND: {
		ipc_port_t port = (ipc_port_t) object;

		FUNC5(port);
		if (FUNC4(port)) {
			FUNC1(port->ip_srights > 0);
			port->ip_srights++;
		}
		FUNC6(port);
		FUNC7(port);
		break;
	    }

	    case MACH_MSG_TYPE_MAKE_SEND: {
		ipc_port_t port = (ipc_port_t) object;

		FUNC5(port);
		if (FUNC4(port)) {
			FUNC1(port->ip_receiver_name != MACH_PORT_NULL);
			FUNC1((port->ip_receiver == ipc_space_kernel) ||
                   (port->ip_receiver->is_node_id != HOST_LOCAL_NODE));
			port->ip_mscount++;
		}

		port->ip_srights++;
		FUNC6(port);
		FUNC7(port);
		break;
	    }

	    case MACH_MSG_TYPE_MOVE_SEND: {
		/* move naked send right into the message */
		FUNC1(((ipc_port_t)object)->ip_srights);
		break;
	    }

	    case MACH_MSG_TYPE_MAKE_SEND_ONCE: {
		ipc_port_t port = (ipc_port_t) object;

		FUNC5(port);
		if (FUNC4(port)) {
			FUNC1(port->ip_receiver_name != MACH_PORT_NULL);
		}
		port->ip_sorights++;
		FUNC6(port);
		FUNC7(port);
		break;
	    }

	    case MACH_MSG_TYPE_MOVE_SEND_ONCE: {
		/* move naked send-once right into the message */
	    	FUNC1(((ipc_port_t)object)->ip_sorights);
		break;
	    }

	    default:
		FUNC9("ipc_object_copyin_from_kernel: strange rights");
	}
}