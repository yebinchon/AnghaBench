
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
typedef int protocol_family_t ;


 int ifnet_detach_protocol (struct ifnet*,int ) ;

void
ether_detach_inet6(struct ifnet *ifp, protocol_family_t protocol_family)
{
 (void) ifnet_detach_protocol(ifp, protocol_family);
}
