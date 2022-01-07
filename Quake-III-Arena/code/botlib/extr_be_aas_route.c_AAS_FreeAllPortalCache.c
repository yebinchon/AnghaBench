
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ aas_routingcache_t ;
struct TYPE_6__ {int numareas; TYPE_1__** portalcache; } ;


 int AAS_FreeRoutingCache (TYPE_1__*) ;
 int FreeMemory (TYPE_1__**) ;
 TYPE_2__ aasworld ;

void AAS_FreeAllPortalCache(void)
{
 int i;
 aas_routingcache_t *cache, *nextcache;


 if (!aasworld.portalcache) return;

 for (i = 0; i < aasworld.numareas; i++)
 {
  for (cache = aasworld.portalcache[i]; cache; cache = nextcache)
  {
   nextcache = cache->next;
   AAS_FreeRoutingCache(cache);
  }
  aasworld.portalcache[i] = ((void*)0);
 }
 FreeMemory(aasworld.portalcache);
 aasworld.portalcache = ((void*)0);
}
