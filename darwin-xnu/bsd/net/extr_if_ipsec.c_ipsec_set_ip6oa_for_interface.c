
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipsec_pcb {scalar_t__ ipsec_output_service_class; } ;
struct ip6_out_args {int ip6oa_sotc; int ip6oa_flags; } ;
typedef int * ifnet_t ;


 int IP6OAF_QOSMARKING_ALLOWED ;
 int IPOAF_QOSMARKING_ALLOWED ;
 scalar_t__ MBUF_SC_VO ;
 int SO_TC_VO ;
 struct ipsec_pcb* ifnet_softc (int *) ;
 scalar_t__ net_qos_policy_restrict_avapps ;
 scalar_t__ net_qos_policy_restricted ;
 int so_svc2tc (scalar_t__) ;

void
ipsec_set_ip6oa_for_interface(ifnet_t interface, struct ip6_out_args *ip6oa)
{
 struct ipsec_pcb *pcb;

 if (interface == ((void*)0) || ip6oa == ((void*)0))
  return;
 pcb = ifnet_softc(interface);

 if (net_qos_policy_restricted == 0) {
  ip6oa->ip6oa_flags |= IPOAF_QOSMARKING_ALLOWED;
  ip6oa->ip6oa_sotc = so_svc2tc(pcb->ipsec_output_service_class);
 } else if (pcb->ipsec_output_service_class != MBUF_SC_VO ||
    net_qos_policy_restrict_avapps != 0) {
  ip6oa->ip6oa_flags &= ~IPOAF_QOSMARKING_ALLOWED;
 } else {
  ip6oa->ip6oa_flags |= IP6OAF_QOSMARKING_ALLOWED;
  ip6oa->ip6oa_sotc = SO_TC_VO;
 }
}
