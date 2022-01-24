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
struct utun_pcb {scalar_t__ utun_max_pending_packets; int /*<<< orphan*/  utun_ifp; int /*<<< orphan*/  utun_unit; scalar_t__ utun_ctlref; int /*<<< orphan*/  utun_pcb_lock; int /*<<< orphan*/ * utun_kpipe_rxring; scalar_t__ utun_kpipe_enabled; } ;
typedef  int /*<<< orphan*/  mbuf_t ;
typedef  int /*<<< orphan*/  ifnet_t ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct utun_pcb* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(ifnet_t interface)
{
	mbuf_t data;
	struct utun_pcb *pcb = FUNC7(interface);

	FUNC0(pcb != NULL);

#if UTUN_NEXUS
	lck_rw_lock_shared(&pcb->utun_pcb_lock);
	if (pcb->utun_kpipe_enabled) {
		/* It's possible to have channels enabled, but not yet have the channel opened,
		 * in which case the rxring will not be set
		 */
		lck_rw_unlock_shared(&pcb->utun_pcb_lock);
		if (pcb->utun_kpipe_rxring != NULL) {
			kern_channel_notify(pcb->utun_kpipe_rxring, 0);
		}
		return;
	}
	lck_rw_unlock_shared(&pcb->utun_pcb_lock);
#endif // UTUN_NEXUS

	for (;;) {
		bool can_accept_packets = true;
		FUNC6(pcb->utun_ifp);

		u_int32_t utun_packet_cnt;
		errno_t error_pc = FUNC1(pcb->utun_ctlref, pcb->utun_unit, &utun_packet_cnt);
		if (error_pc != 0) {
			FUNC11("utun_start: ctl_getenqueuepacketcount returned error %d\n", error_pc);
			utun_packet_cnt = 0;
		}

		can_accept_packets = (utun_packet_cnt < pcb->utun_max_pending_packets);
		if (!can_accept_packets && pcb->utun_ctlref) {
			u_int32_t difference = 0;
			if (FUNC2(pcb->utun_ctlref, pcb->utun_unit, &difference) == 0) {
				if (difference > 0) {
					// If the low-water mark has not yet been reached, we still need to enqueue data
					// into the buffer
					can_accept_packets = true;
				}
			}
		}
		if (!can_accept_packets) {
			errno_t error = FUNC4(interface);
			if (error != 0) {
				FUNC11("utun_start: ifnet_disable_output returned error %d\n", error);
			}
			FUNC5(pcb->utun_ifp);
			break;
		}
		FUNC5(pcb->utun_ifp);
		if (FUNC3(interface, &data) != 0) {
			break;
		}
		if (FUNC12(interface, data) != 0) {
			break;
		}
	}
}