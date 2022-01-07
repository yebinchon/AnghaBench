
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int used; } ;
typedef TYPE_1__ memzone_t ;



int Z_AvailableZoneMemory( memzone_t *zone ) {
 return zone->size - zone->used;
}
