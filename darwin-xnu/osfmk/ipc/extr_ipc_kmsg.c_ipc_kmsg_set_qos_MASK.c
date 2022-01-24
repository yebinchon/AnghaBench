#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ pthread_priority_t ;
typedef  scalar_t__ mach_msg_priority_t ;
typedef  int mach_msg_option_t ;
typedef  scalar_t__ kern_return_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  TYPE_2__* ipc_kmsg_t ;
struct TYPE_6__ {scalar_t__ ikm_qos; scalar_t__ ikm_qos_override; TYPE_1__* ikm_header; } ;
struct TYPE_5__ {int /*<<< orphan*/  msgh_bits; int /*<<< orphan*/  msgh_remote_port; int /*<<< orphan*/  msgh_local_port; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ MACH_MSG_PRIORITY_UNSPECIFIED ; 
 scalar_t__ MACH_MSG_TYPE_PORT_SEND_ONCE ; 
 int MACH_SEND_OVERRIDE ; 
 int MACH_SEND_PROPAGATE_QOS ; 
 int MACH_SEND_SYNC_OVERRIDE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_2__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static kern_return_t
FUNC6(
	ipc_kmsg_t kmsg,
	mach_msg_option_t options,
	mach_msg_priority_t override)
{
	kern_return_t kr;
	ipc_port_t special_reply_port = kmsg->ikm_header->msgh_local_port;
	ipc_port_t dest_port = kmsg->ikm_header->msgh_remote_port;

	kr = FUNC4(kmsg, &kmsg->ikm_qos);
	if (kr != KERN_SUCCESS) {
		if (options & MACH_SEND_PROPAGATE_QOS) {
			kmsg->ikm_qos = FUNC3();
		} else {
			kmsg->ikm_qos = MACH_MSG_PRIORITY_UNSPECIFIED;
		}
	}
	kmsg->ikm_qos_override = kmsg->ikm_qos;

	if (options & MACH_SEND_OVERRIDE) {
		pthread_priority_t pp = FUNC2(override);
		if (pp > kmsg->ikm_qos)
			kmsg->ikm_qos_override = (mach_msg_priority_t)pp;
	}

	kr = KERN_SUCCESS;
	if ((options & MACH_SEND_SYNC_OVERRIDE)) {
		if (FUNC0(special_reply_port) &&
		    FUNC1(kmsg->ikm_header->msgh_bits) == MACH_MSG_TYPE_PORT_SEND_ONCE) {
			/*
			 * Link the destination port to special reply port and make sure that
			 * dest port has a send turnstile, else allocate one.
			 */
			FUNC5(special_reply_port, dest_port);
		}
	}
	return kr;
}