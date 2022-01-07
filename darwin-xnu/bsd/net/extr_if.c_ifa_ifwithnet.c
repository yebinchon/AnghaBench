
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct ifaddr {int dummy; } ;


 int IFSCOPE_NONE ;
 struct ifaddr* ifa_ifwithnet_common (struct sockaddr const*,int ) ;

struct ifaddr *
ifa_ifwithnet(const struct sockaddr *addr)
{
 return (ifa_ifwithnet_common(addr, IFSCOPE_NONE));
}
