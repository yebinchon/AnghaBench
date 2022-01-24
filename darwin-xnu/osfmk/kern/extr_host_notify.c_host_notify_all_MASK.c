#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* queue_t ;
struct TYPE_22__ {TYPE_2__* prev; TYPE_1__* next; } ;
typedef  TYPE_3__ queue_head_t ;
typedef  int /*<<< orphan*/  mach_msg_size_t ;
struct TYPE_23__ {TYPE_6__* msgh_remote_port; int /*<<< orphan*/  msgh_id; void* msgh_voucher_port; void* msgh_local_port; int /*<<< orphan*/  msgh_bits; } ;
typedef  TYPE_5__ mach_msg_header_t ;
typedef  TYPE_6__* ipc_port_t ;
typedef  scalar_t__ ipc_kobject_t ;
typedef  TYPE_7__* host_notify_t ;
typedef  size_t host_flavor_t ;
struct TYPE_25__ {TYPE_6__* port; } ;
struct TYPE_24__ {scalar_t__ ip_kobject; } ;
struct TYPE_21__ {TYPE_3__* next; } ;
struct TYPE_20__ {TYPE_3__* prev; } ;

/* Variables and functions */
 scalar_t__ IKOT_HOST_NOTIFY ; 
 int /*<<< orphan*/  IKOT_NONE ; 
 int /*<<< orphan*/  IKO_NULL ; 
 TYPE_6__* IP_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACH_MSG_TYPE_MOVE_SEND_ONCE ; 
 void* MACH_PORT_NULL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  host_notify_lock ; 
 TYPE_3__* host_notify_queue ; 
 int /*<<< orphan*/ * host_notify_replyid ; 
 int /*<<< orphan*/  host_notify_zone ; 
 scalar_t__ FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_7__*) ; 

__attribute__((used)) static void
FUNC13(
	host_flavor_t		notify_type,
	mach_msg_header_t	*msg,
	mach_msg_size_t		msg_size)
{
	queue_t		notify_queue = &host_notify_queue[notify_type];

	FUNC7(&host_notify_lock);

	if (!FUNC10(notify_queue)) {
		queue_head_t		send_queue;
		host_notify_t		entry;

		send_queue = *notify_queue;
		FUNC11(notify_queue);

		send_queue.next->prev = &send_queue;
		send_queue.prev->next = &send_queue;

		msg->msgh_bits =
		    FUNC0(MACH_MSG_TYPE_MOVE_SEND_ONCE, 0, 0, 0);
		msg->msgh_local_port = MACH_PORT_NULL;
		msg->msgh_voucher_port = MACH_PORT_NULL;
		msg->msgh_id = host_notify_replyid[notify_type];

		while ((entry = (host_notify_t)FUNC2(&send_queue)) != NULL) {
			ipc_port_t		port;

			port = entry->port;
			FUNC1(port != IP_NULL);

			FUNC4(port);
			FUNC1(FUNC3(port) == IKOT_HOST_NOTIFY);
			FUNC1(port->ip_kobject == (ipc_kobject_t)entry);
			FUNC6(port, IKO_NULL, IKOT_NONE);
			FUNC5(port);

			FUNC8(&host_notify_lock);
			FUNC12(host_notify_zone, entry);

			msg->msgh_remote_port = port;

			(void) FUNC9(msg, msg_size);

			FUNC7(&host_notify_lock);
		}
	}

	FUNC8(&host_notify_lock);
}