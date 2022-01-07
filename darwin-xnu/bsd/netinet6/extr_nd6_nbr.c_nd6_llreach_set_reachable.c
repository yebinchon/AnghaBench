
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int ETHERTYPE_IPV6 ;
 int ifnet_llreach_set_reachable (struct ifnet*,int ,void*,unsigned int) ;
 scalar_t__ nd6_llreach_base ;

void
nd6_llreach_set_reachable(struct ifnet *ifp, void *addr, unsigned int alen)
{

 if (nd6_llreach_base == 0)
  return;

 ifnet_llreach_set_reachable(ifp, ETHERTYPE_IPV6, addr, alen);
}
