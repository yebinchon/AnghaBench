
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int * ifaddr_t ;


 int * ifa_ifwithroute (int,struct sockaddr const*,struct sockaddr const*) ;

ifaddr_t
ifaddr_withroute(int flags, const struct sockaddr *destination,
    const struct sockaddr *gateway)
{
 if (destination == ((void*)0) || gateway == ((void*)0))
  return (((void*)0));

 return (ifa_ifwithroute(flags, destination, gateway));
}
