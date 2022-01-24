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
typedef  scalar_t__ u_int32_t ;
struct utun_pcb {scalar_t__ utun_max_pending_packets; int /*<<< orphan*/  utun_ifp; } ;
typedef  int /*<<< orphan*/  kern_ctl_ref ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(kern_ctl_ref kctlref, u_int32_t unit, void *unitinfo, int flags)
{
#pragma unused(flags)
	bool reenable_output = false;
	struct utun_pcb *pcb = unitinfo;
	if (pcb == NULL) {
		return;
	}
	FUNC3(pcb->utun_ifp);

	u_int32_t utun_packet_cnt;
	errno_t error_pc = FUNC0(kctlref, unit, &utun_packet_cnt);
	if (error_pc != 0) {
		FUNC4("utun_ctl_rcvd: ctl_getenqueuepacketcount returned error %d\n", error_pc);
		utun_packet_cnt = 0;
	}

	if (utun_packet_cnt < pcb->utun_max_pending_packets) {
		reenable_output = true;
	}

	if (reenable_output) {
		errno_t error = FUNC1(pcb->utun_ifp);
		if (error != 0) {
			FUNC4("utun_ctl_rcvd: ifnet_enable_output returned error %d\n", error);
		}
	}
	FUNC2(pcb->utun_ifp);
}