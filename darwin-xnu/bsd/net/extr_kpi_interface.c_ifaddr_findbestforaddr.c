
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int * ifnet_t ;
typedef int * ifaddr_t ;


 int * ifaof_ifpforaddr_select (struct sockaddr const*,int *) ;

ifaddr_t
ifaddr_findbestforaddr(const struct sockaddr *addr, ifnet_t interface)
{
 if (addr == ((void*)0) || interface == ((void*)0))
  return (((void*)0));

 return (ifaof_ifpforaddr_select(addr, interface));
}
