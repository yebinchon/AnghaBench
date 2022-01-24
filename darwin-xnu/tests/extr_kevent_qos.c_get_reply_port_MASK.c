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
struct kevent_qos_s {scalar_t__* ext; } ;
typedef  int mach_port_type_t ;
typedef  int mach_port_t ;
struct TYPE_3__ {int msgh_remote_port; } ;
typedef  TYPE_1__ mach_msg_header_t ;
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 int MACH_PORT_TYPE_SEND_ONCE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static mach_port_type_t
FUNC6(struct kevent_qos_s *kev)
{
	mach_msg_header_t *hdr;
	mach_port_t reply_port;
	mach_port_type_t type;
	kern_return_t kr;

	hdr = (void*)kev->ext[0];
	T_QUIET; FUNC2(hdr, "msg hdr");

	reply_port = hdr->msgh_remote_port;
	T_QUIET;FUNC3(FUNC0(reply_port), "reply port valid");
	kr = FUNC4(FUNC5(), reply_port, &type);
	T_QUIET; FUNC1(kr, "mach_port_type");
	T_QUIET; FUNC3(type & MACH_PORT_TYPE_SEND_ONCE, "send once received");

	return reply_port;
}