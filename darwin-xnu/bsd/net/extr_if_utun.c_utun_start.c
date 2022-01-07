
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct utun_pcb {scalar_t__ utun_max_pending_packets; int utun_ifp; int utun_unit; scalar_t__ utun_ctlref; int utun_pcb_lock; int * utun_kpipe_rxring; scalar_t__ utun_kpipe_enabled; } ;
typedef int mbuf_t ;
typedef int ifnet_t ;
typedef scalar_t__ errno_t ;


 int VERIFY (int ) ;
 scalar_t__ ctl_getenqueuepacketcount (scalar_t__,int ,scalar_t__*) ;
 scalar_t__ ctl_getenqueuereadable (scalar_t__,int ,scalar_t__*) ;
 scalar_t__ ifnet_dequeue (int ,int *) ;
 scalar_t__ ifnet_disable_output (int ) ;
 int ifnet_lock_done (int ) ;
 int ifnet_lock_shared (int ) ;
 struct utun_pcb* ifnet_softc (int ) ;
 int kern_channel_notify (int *,int ) ;
 int lck_rw_lock_shared (int *) ;
 int lck_rw_unlock_shared (int *) ;
 int printf (char*,scalar_t__) ;
 scalar_t__ utun_output (int ,int ) ;

__attribute__((used)) static void
utun_start(ifnet_t interface)
{
 mbuf_t data;
 struct utun_pcb *pcb = ifnet_softc(interface);

 VERIFY(pcb != ((void*)0));
 for (;;) {
  bool can_accept_packets = 1;
  ifnet_lock_shared(pcb->utun_ifp);

  u_int32_t utun_packet_cnt;
  errno_t error_pc = ctl_getenqueuepacketcount(pcb->utun_ctlref, pcb->utun_unit, &utun_packet_cnt);
  if (error_pc != 0) {
   printf("utun_start: ctl_getenqueuepacketcount returned error %d\n", error_pc);
   utun_packet_cnt = 0;
  }

  can_accept_packets = (utun_packet_cnt < pcb->utun_max_pending_packets);
  if (!can_accept_packets && pcb->utun_ctlref) {
   u_int32_t difference = 0;
   if (ctl_getenqueuereadable(pcb->utun_ctlref, pcb->utun_unit, &difference) == 0) {
    if (difference > 0) {


     can_accept_packets = 1;
    }
   }
  }
  if (!can_accept_packets) {
   errno_t error = ifnet_disable_output(interface);
   if (error != 0) {
    printf("utun_start: ifnet_disable_output returned error %d\n", error);
   }
   ifnet_lock_done(pcb->utun_ifp);
   break;
  }
  ifnet_lock_done(pcb->utun_ifp);
  if (ifnet_dequeue(interface, &data) != 0) {
   break;
  }
  if (utun_output(interface, data) != 0) {
   break;
  }
 }
}
