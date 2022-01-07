
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
struct ip6aux {scalar_t__* ip6a_ehsrc; int ip6a_flags; } ;
struct ifnet {int dummy; } ;
struct ether_header {int * ether_shost; int * ether_dhost; int ether_type; } ;
typedef int protocol_family_t ;
typedef int mbuf_t ;
typedef int ifnet_t ;
typedef int ether_type ;
typedef int errno_t ;


 int EJUSTRETURN ;
 int ETHERTYPE_IPV6 ;
 int ETHER_ADDR_LEN ;
 int IP6A_HASEEN ;
 scalar_t__ bcmp (int *,int ,int) ;
 int bcopy (int *,scalar_t__*,int) ;
 int etherbroadcastaddr ;
 int etherip6allnodes ;
 scalar_t__ htons (int ) ;
 struct ip6aux* ip6_addaux (int ) ;
 int m_freem (int ) ;
 struct ifnet* mbuf_pkthdr_rcvif (int ) ;
 int nd6_llreach_set_reachable (struct ifnet*,int *,int) ;
 scalar_t__ proto_input (int ,int ) ;

__attribute__((used)) static errno_t
ether_inet6_input(ifnet_t ifp, protocol_family_t protocol,
    mbuf_t packet, char *header)
{
#pragma unused(ifp, protocol)
 struct ether_header *eh = (struct ether_header *)(void *)header;
 u_int16_t ether_type;

 bcopy(&eh->ether_type, &ether_type, sizeof (ether_type));

 if (ether_type == htons(ETHERTYPE_IPV6)) {
  struct ifnet *mifp;







  mifp = mbuf_pkthdr_rcvif(packet);


  if (bcmp(eh->ether_shost, etherbroadcastaddr,
      ETHER_ADDR_LEN) != 0) {
   nd6_llreach_set_reachable(mifp, eh->ether_shost,
       ETHER_ADDR_LEN);
  }


  if (!bcmp(eh->ether_dhost, etherip6allnodes, ETHER_ADDR_LEN)) {
   struct ip6aux *ip6a;

   ip6a = ip6_addaux(packet);
   if (ip6a) {
    ip6a->ip6a_flags |= IP6A_HASEEN;
    bcopy(eh->ether_shost, ip6a->ip6a_ehsrc,
        ETHER_ADDR_LEN);
   }
  }

  if (proto_input(protocol, packet) != 0)
   m_freem(packet);
 } else {
  m_freem(packet);
 }

 return (EJUSTRETURN);
}
