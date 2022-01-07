
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct ipsec_pcb {int ipsec_pcb_lock; int * ipsec_netif_rxring; int ipsec_input_chain_lock; TYPE_1__* ipsec_input_chain_last; TYPE_1__* ipsec_input_chain; scalar_t__ ipsec_use_netif; } ;
typedef int protocol_family_t ;
typedef TYPE_1__* mbuf_t ;
typedef int * kern_channel_ring_t ;
typedef int ifnet_t ;
typedef int errno_t ;
struct TYPE_5__ {struct TYPE_5__* m_nextpkt; } ;


 int VERIFY (int) ;
 struct ipsec_pcb* ifnet_softc (int ) ;
 int ipsec_demux (int ,TYPE_1__*,int *,int *) ;
 int ipsec_proto_input (int ,int ,TYPE_1__*,int *) ;
 int kern_channel_notify (int *,int ) ;
 int lck_mtx_lock (int *) ;
 int lck_mtx_unlock (int *) ;
 int lck_rw_lock_shared (int *) ;
 int lck_rw_unlock_shared (int *) ;

errno_t
ipsec_inject_inbound_packet(ifnet_t interface,
       mbuf_t packet)
{
 {
  errno_t error;
  protocol_family_t protocol;
  if ((error = ipsec_demux(interface, packet, ((void*)0), &protocol)) != 0) {
   return error;
  }

  return ipsec_proto_input(interface, protocol, packet, ((void*)0));
 }
}
