
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int dummy; } ;


 int in6_purgeaddrs (struct ifnet*) ;
 int in_purgeaddrs (struct ifnet*) ;

__attribute__((used)) static void
if_purgeaddrs(struct ifnet *ifp)
{






}
