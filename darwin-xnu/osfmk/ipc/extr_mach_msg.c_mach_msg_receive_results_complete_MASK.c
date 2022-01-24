#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  TYPE_1__* thread_t ;
typedef  scalar_t__ ipc_port_t ;
typedef  scalar_t__ ipc_object_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_3__ {scalar_t__ turnstile; scalar_t__ ith_state; int ith_option; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ IOT_PORT ; 
 int /*<<< orphan*/  IPC_PORT_ADJUST_SR_ALLOW_SYNC_LINKAGE ; 
 int /*<<< orphan*/  IPC_PORT_ADJUST_SR_RECEIVED_MSG ; 
 scalar_t__ IPC_PORT_NULL ; 
 scalar_t__ MACH_PEEK_READY ; 
 scalar_t__ MACH_RCV_INTERRUPTED ; 
 int MACH_RCV_LARGE ; 
 scalar_t__ MACH_RCV_PORT_CHANGED ; 
 scalar_t__ MACH_RCV_TIMED_OUT ; 
 scalar_t__ MACH_RCV_TOO_LARGE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ TURNSTILE_NULL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(ipc_object_t object)
{
	thread_t self = FUNC2();
	ipc_port_t port = IPC_PORT_NULL;
	boolean_t get_turnstile = self->turnstile ? FALSE : TRUE;

	if (FUNC3(object) == IOT_PORT) {
		FUNC0(port = (ipc_port_t) object);
	} else {
		FUNC1(self->turnstile != TURNSTILE_NULL);
		return;
	}

	uint8_t flags = IPC_PORT_ADJUST_SR_ALLOW_SYNC_LINKAGE;

	/*
	 * Don't clear the ip_srp_msg_sent bit if...
	 */
	if (!((self->ith_state == MACH_RCV_TOO_LARGE && self->ith_option & MACH_RCV_LARGE) || //msg was too large and the next receive will get it
		self->ith_state == MACH_RCV_INTERRUPTED ||
		self->ith_state == MACH_RCV_TIMED_OUT ||
		self->ith_state == MACH_RCV_PORT_CHANGED ||
		self->ith_state == MACH_PEEK_READY)) {

		flags |= IPC_PORT_ADJUST_SR_RECEIVED_MSG;
	}

	FUNC4(port,
		flags, get_turnstile);
	/* thread now has a turnstile */
}