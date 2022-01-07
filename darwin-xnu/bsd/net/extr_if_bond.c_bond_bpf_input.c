
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct ether_header {int dummy; } ;
typedef TYPE_2__* mbuf_t ;
typedef int ifnet_t ;
typedef int (* bpf_packet_func ) (int ,TYPE_2__*) ;
struct TYPE_9__ {int csum_flags; int vlan_tag; } ;
struct TYPE_10__ {int m_len; int m_data; TYPE_1__ m_pkthdr; } ;


 int CSUM_VLAN_TAG_VALID ;
 scalar_t__ ETHER_HDR_LEN ;
 int bond_bpf_vlan (int ,TYPE_2__*,struct ether_header const*,int ,int (*) (int ,TYPE_2__*)) ;
 int stub1 (int ,TYPE_2__*) ;

__attribute__((used)) static __inline__ void
bond_bpf_input(ifnet_t ifp, mbuf_t m, const struct ether_header * eh_p,
  bpf_packet_func func)
{
    if (func != ((void*)0)) {
 if (m->m_pkthdr.csum_flags & CSUM_VLAN_TAG_VALID) {
     bond_bpf_vlan(ifp, m, eh_p, m->m_pkthdr.vlan_tag, func);
 } else {

     m->m_data -= ETHER_HDR_LEN;
     m->m_len += ETHER_HDR_LEN;
     (*func)(ifp, m);
     m->m_data += ETHER_HDR_LEN;
     m->m_len -= ETHER_HDR_LEN;
 }
    }
    return;
}
