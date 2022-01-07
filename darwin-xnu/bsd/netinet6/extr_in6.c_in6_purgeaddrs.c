
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int in6_purgeif (struct ifnet*) ;

void
in6_purgeaddrs(struct ifnet *ifp)
{
 in6_purgeif(ifp);
}
