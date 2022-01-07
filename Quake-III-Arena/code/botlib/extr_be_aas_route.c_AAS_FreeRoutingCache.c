
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ size; } ;
typedef TYPE_1__ aas_routingcache_t ;


 int AAS_UnlinkCache (TYPE_1__*) ;
 int FreeMemory (TYPE_1__*) ;
 int routingcachesize ;

void AAS_FreeRoutingCache(aas_routingcache_t *cache)
{
 AAS_UnlinkCache(cache);
 routingcachesize -= cache->size;
 FreeMemory(cache);
}
