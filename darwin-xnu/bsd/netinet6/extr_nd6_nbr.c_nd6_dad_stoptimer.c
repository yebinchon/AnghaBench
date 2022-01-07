
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddr {int dummy; } ;


 scalar_t__ nd6_dad_timer ;
 int untimeout (void (*) (void*),void*) ;

void
nd6_dad_stoptimer(
 struct ifaddr *ifa)
{

 untimeout((void (*)(void *))nd6_dad_timer, (void *)ifa);
}
