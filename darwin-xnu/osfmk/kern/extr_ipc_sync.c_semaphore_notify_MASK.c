#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ semaphore_t ;
struct TYPE_6__ {TYPE_3__* msgh_remote_port; } ;
struct TYPE_7__ {TYPE_1__ not_header; } ;
typedef  TYPE_2__ mach_no_senders_notification_t ;
typedef  int /*<<< orphan*/  mach_msg_header_t ;
typedef  TYPE_3__* ipc_port_t ;
struct TYPE_8__ {scalar_t__ ip_kobject; } ;

/* Variables and functions */
 scalar_t__ IKOT_SEMAPHORE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

void
FUNC4(mach_msg_header_t *msg)
{
	mach_no_senders_notification_t *notification = (void *)msg;
	ipc_port_t port = notification->not_header.msgh_remote_port;
	semaphore_t semaphore;

	FUNC0(FUNC1(port));
	FUNC0(IKOT_SEMAPHORE == FUNC2(port));
	semaphore = (semaphore_t)port->ip_kobject;

	FUNC3(semaphore);
}