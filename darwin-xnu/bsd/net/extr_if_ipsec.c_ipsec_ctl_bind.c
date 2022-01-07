
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_ctl {int sc_unit; } ;
struct ipsec_pcb {int ipsec_use_netif; int ipsec_input_chain_lock; int ipsec_pcb_lock; int ipsec_rx_fsw_ring_size; int ipsec_tx_fsw_ring_size; int ipsec_netif_ring_size; int ipsec_slot_size; int ipsec_output_service_class; int ipsec_unit; int ipsec_ctlref; } ;
typedef int kern_ctl_ref ;
typedef int errno_t ;


 int IPSEC_IF_DEFAULT_RING_SIZE ;
 int IPSEC_IF_DEFAULT_RX_FSW_RING_SIZE ;
 int IPSEC_IF_DEFAULT_SLOT_SIZE ;
 int IPSEC_IF_DEFAULT_TX_FSW_RING_SIZE ;
 int MBUF_SC_OAM ;
 int ipsec_lck_attr ;
 int ipsec_lck_grp ;
 int ipsec_pcb_zone ;
 int lck_mtx_init (int *,int ,int ) ;
 int lck_rw_init (int *,int ,int ) ;
 int memset (struct ipsec_pcb*,int ,int) ;
 struct ipsec_pcb* zalloc (int ) ;

__attribute__((used)) static errno_t
ipsec_ctl_bind(kern_ctl_ref kctlref,
      struct sockaddr_ctl *sac,
      void **unitinfo)
{
 struct ipsec_pcb *pcb = zalloc(ipsec_pcb_zone);
 memset(pcb, 0, sizeof(*pcb));


 *unitinfo = pcb;
 pcb->ipsec_ctlref = kctlref;
 pcb->ipsec_unit = sac->sc_unit;
 pcb->ipsec_output_service_class = MBUF_SC_OAM;
 lck_rw_init(&pcb->ipsec_pcb_lock, ipsec_lck_grp, ipsec_lck_attr);




 return (0);
}
