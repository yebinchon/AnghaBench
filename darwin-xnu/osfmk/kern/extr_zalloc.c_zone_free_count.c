
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* zone_t ;
typedef scalar_t__ integer_t ;
struct TYPE_5__ {scalar_t__ countfree; } ;


 int assert (int) ;
 int lock_zone (TYPE_1__*) ;
 int unlock_zone (TYPE_1__*) ;

integer_t
zone_free_count(zone_t zone)
{
 integer_t free_count;

 lock_zone(zone);
 free_count = zone->countfree;
 unlock_zone(zone);

 assert(free_count >= 0);

 return(free_count);
}
