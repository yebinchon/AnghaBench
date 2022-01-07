
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct ifnet {int dummy; } ;
struct ether_header {scalar_t__ ether_type; int ether_shost; } ;
typedef int protocol_family_t ;
typedef TYPE_1__* mbuf_t ;
typedef int ifnet_t ;
typedef int errno_t ;
struct TYPE_9__ {struct TYPE_9__* m_nextpkt; } ;


 int EJUSTRETURN ;
 int ETHERTYPE_ARP ;
 int ETHERTYPE_IP ;
 int ETHER_ADDR_LEN ;
 int PF_INET ;
 int arp_llreach_set_reachable (struct ifnet*,int ,int ) ;
 scalar_t__ bcmp (int ,int ,int ) ;
 int ether_inet_arp_input (struct ifnet*,TYPE_1__*) ;
 int etherbroadcastaddr ;
 scalar_t__ htons (int ) ;
 int mbuf_freem (TYPE_1__*) ;
 int mbuf_freem_list (TYPE_1__*) ;
 struct ether_header* mbuf_pkthdr_header (TYPE_1__*) ;
 struct ifnet* mbuf_pkthdr_rcvif (TYPE_1__*) ;
 scalar_t__ proto_input (int ,TYPE_1__*) ;

__attribute__((used)) static errno_t
ether_inet_input(ifnet_t ifp, protocol_family_t protocol_family,
    mbuf_t m_list)
{
#pragma unused(ifp, protocol_family)
 mbuf_t m;
 mbuf_t *tailptr = &m_list;
 mbuf_t nextpkt;


 for (m = m_list; m; m = nextpkt) {
  struct ether_header *eh = mbuf_pkthdr_header(m);
  struct ifnet *mifp;
  mifp = mbuf_pkthdr_rcvif(m);

  nextpkt = m->m_nextpkt;

  if (eh->ether_type == htons(ETHERTYPE_IP)) {




   if (bcmp(eh->ether_shost, etherbroadcastaddr,
       ETHER_ADDR_LEN) != 0) {
    arp_llreach_set_reachable(mifp, eh->ether_shost,
        ETHER_ADDR_LEN);
   }

   *tailptr = m;
   tailptr = &m->m_nextpkt;
  } else {

   m->m_nextpkt = ((void*)0);
   if (eh->ether_type == htons(ETHERTYPE_ARP))
    ether_inet_arp_input(mifp, m);
   else
    mbuf_freem(m);
  }
 }

 *tailptr = ((void*)0);


 if (m_list != ((void*)0) && proto_input(PF_INET, m_list) != 0) {
  mbuf_freem_list(m_list);
 }

 return (EJUSTRETURN);
}
