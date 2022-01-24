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
struct utun_pcb {int utun_max_pending_packets; int utun_use_netif; int /*<<< orphan*/  utun_pcb_lock; int /*<<< orphan*/  utun_input_chain_lock; int /*<<< orphan*/  utun_rx_fsw_ring_size; int /*<<< orphan*/  utun_tx_fsw_ring_size; int /*<<< orphan*/  utun_netif_ring_size; int /*<<< orphan*/  utun_slot_size; int /*<<< orphan*/  utun_unit; int /*<<< orphan*/  utun_ctlref; } ;
struct sockaddr_ctl {int /*<<< orphan*/  sc_unit; } ;
typedef  int /*<<< orphan*/  kern_ctl_ref ;
typedef  int /*<<< orphan*/  errno_t ;

/* Variables and functions */
 int /*<<< orphan*/  UTUN_IF_DEFAULT_RING_SIZE ; 
 int /*<<< orphan*/  UTUN_IF_DEFAULT_RX_FSW_RING_SIZE ; 
 int /*<<< orphan*/  UTUN_IF_DEFAULT_SLOT_SIZE ; 
 int /*<<< orphan*/  UTUN_IF_DEFAULT_TX_FSW_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct utun_pcb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  utun_lck_attr ; 
 int /*<<< orphan*/  utun_lck_grp ; 
 int /*<<< orphan*/  utun_pcb_zone ; 
 struct utun_pcb* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static errno_t
FUNC4(kern_ctl_ref kctlref,
			  struct sockaddr_ctl *sac,
			  void **unitinfo)
{
	struct utun_pcb *pcb = FUNC3(utun_pcb_zone);
	FUNC2(pcb, 0, sizeof(*pcb));

	*unitinfo = pcb;
	pcb->utun_ctlref = kctlref;
	pcb->utun_unit = sac->sc_unit;
	pcb->utun_max_pending_packets = 1;

#if UTUN_NEXUS
	pcb->utun_use_netif = false;
	pcb->utun_slot_size = UTUN_IF_DEFAULT_SLOT_SIZE;
	pcb->utun_netif_ring_size = UTUN_IF_DEFAULT_RING_SIZE;
	pcb->utun_tx_fsw_ring_size = UTUN_IF_DEFAULT_TX_FSW_RING_SIZE;
	pcb->utun_rx_fsw_ring_size = UTUN_IF_DEFAULT_RX_FSW_RING_SIZE;
#endif // UTUN_NEXUS

	FUNC0(&pcb->utun_input_chain_lock, utun_lck_grp, utun_lck_attr);
	FUNC1(&pcb->utun_pcb_lock, utun_lck_grp, utun_lck_attr);

	return (0);
}