#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  mach_msg_return_t ;
typedef  scalar_t__ kern_return_t ;
typedef  scalar_t__ ipc_port_t ;
typedef  int /*<<< orphan*/  ipc_object_t ;
struct TYPE_2__ {scalar_t__ ith_special_reply_port; } ;

/* Variables and functions */
 scalar_t__ IP_NULL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ KERN_SUCCESS ; 
 int /*<<< orphan*/  MACH_MSG_SUCCESS ; 
 int /*<<< orphan*/  MACH_MSG_TYPE_COPY_SEND ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MACH_RCV_INVALID_NOTIFY ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static mach_msg_return_t
FUNC7(
	ipc_port_t special_reply_port,
	mach_port_name_t dest_name_port)
{
	ipc_port_t dest_port = IP_NULL;
	kern_return_t kr;

	if (FUNC3()->ith_special_reply_port != special_reply_port) {
		return MACH_RCV_INVALID_NOTIFY;
	}

	/* Copyin the destination port */
	if (!FUNC1(dest_name_port)) {
		return MACH_RCV_INVALID_NOTIFY;
	}

	kr = FUNC4(FUNC2(),
			       dest_name_port, MACH_MSG_TYPE_COPY_SEND,
			       (ipc_object_t *) &dest_port);

	/*
	 * The receive right of dest port might have gone away,
	 * do not fail the receive in that case.
	 */
	if (kr == KERN_SUCCESS && FUNC0(dest_port)) {
		FUNC5(special_reply_port,
			dest_port);

		/* release the send right */
		FUNC6(dest_port);
	}
	return MACH_MSG_SUCCESS;
}