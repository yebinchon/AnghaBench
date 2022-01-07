
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipsec_pcb {scalar_t__ ipsec_output_service_class; } ;
struct ip_out_args {int ipoa_sotc; int ipoa_flags; } ;
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
ipsec_set_ipoa_for_interface(ifnet_t interface, struct ip_out_args *ipoa)
{
 struct ipsec_pcb *pcb;

 if (interface == ((void*)0) || ipoa == ((void*)0))
  return;
 pcb = ifnet_softc(interface);

 if (net_qos_policy_restricted == 0) {
  ipoa->ipoa_flags |= IPOAF_QOSMARKING_ALLOWED;
  ipoa->ipoa_sotc = so_svc2tc(pcb->ipsec_output_service_class);
 } else if (pcb->ipsec_output_service_class != MBUF_SC_VO ||
    net_qos_policy_restrict_avapps != 0) {
  ipoa->ipoa_flags &= ~IPOAF_QOSMARKING_ALLOWED;
 } else {
  ipoa->ipoa_flags |= IP6OAF_QOSMARKING_ALLOWED;
  ipoa->ipoa_sotc = SO_TC_VO;
 }
}
