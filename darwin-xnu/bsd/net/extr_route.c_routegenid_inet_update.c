
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_add_32 (int *,int) ;
 int route_genid_inet ;

void
routegenid_inet_update(void)
{
 atomic_add_32(&route_genid_inet, 1);
}
