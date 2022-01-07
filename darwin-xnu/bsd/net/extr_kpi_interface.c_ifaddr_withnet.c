
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int * ifaddr_t ;


 int * ifa_ifwithnet (struct sockaddr const*) ;

ifaddr_t
ifaddr_withnet(const struct sockaddr *net)
{
 if (net == ((void*)0))
  return (((void*)0));

 return (ifa_ifwithnet(net));
}
