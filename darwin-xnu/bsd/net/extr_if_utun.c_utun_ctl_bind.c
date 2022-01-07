
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utun_pcb {int utun_max_pending_packets; int utun_use_netif; int utun_pcb_lock; int utun_input_chain_lock; int utun_rx_fsw_ring_size; int utun_tx_fsw_ring_size; int utun_netif_ring_size; int utun_slot_size; int utun_unit; int utun_ctlref; } ;
struct sockaddr_ctl {int sc_unit; } ;
typedef int kern_ctl_ref ;
typedef int errno_t ;


 int UTUN_IF_DEFAULT_RING_SIZE ;
 int UTUN_IF_DEFAULT_RX_FSW_RING_SIZE ;
 int UTUN_IF_DEFAULT_SLOT_SIZE ;
 int UTUN_IF_DEFAULT_TX_FSW_RING_SIZE ;
 int lck_mtx_init (int *,int ,int ) ;
 int lck_rw_init (int *,int ,int ) ;
 int memset (struct utun_pcb*,int ,int) ;
 int utun_lck_attr ;
 int utun_lck_grp ;
 int utun_pcb_zone ;
 struct utun_pcb* zalloc (int ) ;

__attribute__((used)) static errno_t
utun_ctl_bind(kern_ctl_ref kctlref,
     struct sockaddr_ctl *sac,
     void **unitinfo)
{
 struct utun_pcb *pcb = zalloc(utun_pcb_zone);
 memset(pcb, 0, sizeof(*pcb));

 *unitinfo = pcb;
 pcb->utun_ctlref = kctlref;
 pcb->utun_unit = sac->sc_unit;
 pcb->utun_max_pending_packets = 1;
 lck_mtx_init(&pcb->utun_input_chain_lock, utun_lck_grp, utun_lck_attr);
 lck_rw_init(&pcb->utun_pcb_lock, utun_lck_grp, utun_lck_attr);

 return (0);
}
