#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct fileglob {int dummy; } ;
struct TYPE_10__ {TYPE_3__* msgh_remote_port; } ;
struct TYPE_11__ {TYPE_1__ not_header; } ;
typedef  TYPE_2__ mach_no_senders_notification_t ;
typedef  int /*<<< orphan*/  mach_msg_header_t ;
typedef  TYPE_3__* ipc_port_t ;
struct TYPE_12__ {scalar_t__ ip_srights; scalar_t__ ip_kobject; } ;

/* Variables and functions */
 scalar_t__ IKOT_FILEPORT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct fileglob*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void
FUNC8(mach_msg_header_t *msg)
{
	mach_no_senders_notification_t *notification = (void *)msg;
	ipc_port_t port = notification->not_header.msgh_remote_port;
	struct fileglob *fg = NULL;

	if (!FUNC0(port))
		FUNC7("Invalid port passed to fileport_notify()\n");

	FUNC4(port);

	fg = (struct fileglob *)port->ip_kobject;

	if (!FUNC2(port)) 
		FUNC7("Inactive port passed to fileport_notify()\n");
	if (FUNC3(port) != IKOT_FILEPORT) 
		FUNC7("Port of type other than IKOT_FILEPORT passed to fileport_notify()\n");
	if (fg == NULL) 
		FUNC7("fileport without an assocated fileglob\n");

	if (port->ip_srights == 0) {
		FUNC5(port);

		FUNC1(fg);
		FUNC6(port);
	} else {
		FUNC5(port);
	}
}