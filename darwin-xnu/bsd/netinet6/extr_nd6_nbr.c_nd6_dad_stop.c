
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddr {int dummy; } ;
struct dadq {int dummy; } ;


 int DAD_REMREF (struct dadq*) ;
 int nd6_dad_detach (struct dadq*,struct ifaddr*) ;
 struct dadq* nd6_dad_find (struct ifaddr*,int *) ;
 scalar_t__ nd6_dad_timer ;
 int untimeout (void (*) (void*),void*) ;

void
nd6_dad_stop(struct ifaddr *ifa)
{
 struct dadq *dp;

 dp = nd6_dad_find(ifa, ((void*)0));
 if (!dp) {

  return;
 }

 untimeout((void (*)(void *))nd6_dad_timer, (void *)ifa);

 nd6_dad_detach(dp, ifa);
 DAD_REMREF(dp);
}
