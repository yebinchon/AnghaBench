
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;
typedef int protocol_family_t ;
typedef int errno_t ;


 int ether_attach_inet (struct ifnet*,int ) ;

__attribute__((used)) static errno_t
vlan_attach_inet(struct ifnet *ifp, protocol_family_t protocol_family)
{
    return (ether_attach_inet(ifp, protocol_family));
}
