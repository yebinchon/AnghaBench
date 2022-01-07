
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct ifaddr {int dummy; } ;


 struct ifaddr* ifa_ifwithnet_common (struct sockaddr const*,unsigned int) ;

struct ifaddr *
ifa_ifwithnet_scoped(const struct sockaddr *addr, unsigned int ifscope)
{
 return (ifa_ifwithnet_common(addr, ifscope));
}
