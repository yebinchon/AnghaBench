
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct utun_pcb {scalar_t__ utun_max_pending_packets; int utun_ifp; } ;
typedef int kern_ctl_ref ;
typedef scalar_t__ errno_t ;


 scalar_t__ ctl_getenqueuepacketcount (int ,scalar_t__,scalar_t__*) ;
 scalar_t__ ifnet_enable_output (int ) ;
 int ifnet_lock_done (int ) ;
 int ifnet_lock_exclusive (int ) ;
 int printf (char*,scalar_t__) ;

__attribute__((used)) static void
utun_ctl_rcvd(kern_ctl_ref kctlref, u_int32_t unit, void *unitinfo, int flags)
{
#pragma unused(flags)
 bool reenable_output = 0;
 struct utun_pcb *pcb = unitinfo;
 if (pcb == ((void*)0)) {
  return;
 }
 ifnet_lock_exclusive(pcb->utun_ifp);

 u_int32_t utun_packet_cnt;
 errno_t error_pc = ctl_getenqueuepacketcount(kctlref, unit, &utun_packet_cnt);
 if (error_pc != 0) {
  printf("utun_ctl_rcvd: ctl_getenqueuepacketcount returned error %d\n", error_pc);
  utun_packet_cnt = 0;
 }

 if (utun_packet_cnt < pcb->utun_max_pending_packets) {
  reenable_output = 1;
 }

 if (reenable_output) {
  errno_t error = ifnet_enable_output(pcb->utun_ifp);
  if (error != 0) {
   printf("utun_ctl_rcvd: ifnet_enable_output returned error %d\n", error);
  }
 }
 ifnet_lock_done(pcb->utun_ifp);
}
