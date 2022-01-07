
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef int * ifaddr_t ;


 int * ifa_ifwithdstaddr (struct sockaddr const*) ;

ifaddr_t
ifaddr_withdstaddr(const struct sockaddr *address)
{
 if (address == ((void*)0))
  return (((void*)0));

 return (ifa_ifwithdstaddr(address));
}
