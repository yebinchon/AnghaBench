
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct ifaddr {int dummy; } ;


 struct ifaddr* ifa_ifwithaddr_locked (struct sockaddr const*) ;
 int ifnet_head_done () ;
 int ifnet_head_lock_shared () ;

struct ifaddr *
ifa_ifwithaddr(const struct sockaddr *addr)
{
 struct ifaddr *result = ((void*)0);

 ifnet_head_lock_shared();

 result = ifa_ifwithaddr_locked(addr);

 ifnet_head_done();

 return (result);
}
