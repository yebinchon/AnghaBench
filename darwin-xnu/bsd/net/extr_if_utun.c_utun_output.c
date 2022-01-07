
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct utun_pcb {scalar_t__ utun_ifp; int utun_flags; int utun_ext_ifdata_stats; int utun_use_netif; int utun_unit; scalar_t__ utun_ctlref; } ;
typedef int mbuf_t ;
typedef scalar_t__ int32_t ;
typedef scalar_t__ ifnet_t ;
typedef scalar_t__ errno_t ;


 int CTL_DATA_EOR ;
 int DLT_NULL ;
 int UTUN_FLAGS_NO_OUTPUT ;
 scalar_t__ UTUN_HEADER_SIZE (struct utun_pcb*) ;
 int VERIFY (int) ;
 int bpf_tap_out (scalar_t__,int ,int ,int ,int ) ;
 scalar_t__ ctl_enqueuembuf (scalar_t__,int ,int ,int ) ;
 int htonl (int ) ;
 struct utun_pcb* ifnet_softc (scalar_t__) ;
 int ifnet_stat_increment_out (scalar_t__,int,int,int) ;
 scalar_t__ m_pktlen (int ) ;
 scalar_t__ mbuf_data (int ) ;
 int mbuf_freem (int ) ;
 int mbuf_pkthdr_len (int ) ;
 int printf (char*,scalar_t__) ;

__attribute__((used)) static errno_t
utun_output(ifnet_t interface,
   mbuf_t data)
{
 struct utun_pcb *pcb = ifnet_softc(interface);
 errno_t result;

 VERIFY(interface == pcb->utun_ifp);




 {
  if (m_pktlen(data) >= (int32_t)UTUN_HEADER_SIZE(pcb)) {
   bpf_tap_out(pcb->utun_ifp, DLT_NULL, data, 0, 0);
  }
 }

 if (pcb->utun_flags & UTUN_FLAGS_NO_OUTPUT) {

  mbuf_freem(data);
  return 0;
 }


 if (pcb->utun_ctlref) {
  int length;




  if (m_pktlen(data) >= (int32_t)UTUN_HEADER_SIZE(pcb)) {
   *(u_int32_t *)mbuf_data(data) = htonl(*(u_int32_t *)mbuf_data(data));
  }

  length = mbuf_pkthdr_len(data);
  result = ctl_enqueuembuf(pcb->utun_ctlref, pcb->utun_unit, data, CTL_DATA_EOR);
  if (result != 0) {
   mbuf_freem(data);
   printf("utun_output - ctl_enqueuembuf failed: %d\n", result);



   {
    ifnet_stat_increment_out(interface, 0, 0, 1);
   }
  } else {



   {
    if (!pcb->utun_ext_ifdata_stats) {
     ifnet_stat_increment_out(interface, 1, length, 0);
    }
   }
  }
 } else {
  mbuf_freem(data);
 }

 return 0;
}
