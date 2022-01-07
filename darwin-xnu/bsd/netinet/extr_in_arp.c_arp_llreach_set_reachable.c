
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int ETHERTYPE_IP ;
 scalar_t__ arp_llreach_base ;
 int ifnet_llreach_set_reachable (struct ifnet*,int ,void*,unsigned int) ;

void
arp_llreach_set_reachable(struct ifnet *ifp, void *addr, unsigned int alen)
{

 if (arp_llreach_base == 0)
  return;

 ifnet_llreach_set_reachable(ifp, ETHERTYPE_IP, addr, alen);
}
