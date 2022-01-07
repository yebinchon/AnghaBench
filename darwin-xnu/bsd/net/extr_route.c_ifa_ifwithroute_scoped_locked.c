
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct ifaddr {int dummy; } ;


 unsigned int IFSCOPE_NONE ;
 int RTF_IFSCOPE ;
 struct ifaddr* ifa_ifwithroute_common_locked (int,struct sockaddr const*,struct sockaddr const*,unsigned int) ;

struct ifaddr *
ifa_ifwithroute_scoped_locked(int flags, const struct sockaddr *dst,
    const struct sockaddr *gateway, unsigned int ifscope)
{
 if (ifscope != IFSCOPE_NONE)
  flags |= RTF_IFSCOPE;
 else
  flags &= ~RTF_IFSCOPE;

 return (ifa_ifwithroute_common_locked(flags, dst, gateway, ifscope));
}
