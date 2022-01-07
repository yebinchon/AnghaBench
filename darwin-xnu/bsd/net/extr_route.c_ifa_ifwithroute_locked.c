
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct ifaddr {int dummy; } ;


 int IFSCOPE_NONE ;
 int RTF_IFSCOPE ;
 struct ifaddr* ifa_ifwithroute_common_locked (int,struct sockaddr const*,struct sockaddr const*,int ) ;

struct ifaddr *
ifa_ifwithroute_locked(int flags, const struct sockaddr *dst,
    const struct sockaddr *gateway)
{
 return (ifa_ifwithroute_common_locked((flags & ~RTF_IFSCOPE), dst,
     gateway, IFSCOPE_NONE));
}
