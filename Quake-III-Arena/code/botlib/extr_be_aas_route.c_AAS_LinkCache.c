
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* time_next; struct TYPE_4__* time_prev; } ;
typedef TYPE_1__ aas_routingcache_t ;
struct TYPE_5__ {TYPE_1__* newestcache; TYPE_1__* oldestcache; } ;


 TYPE_2__ aasworld ;

void AAS_LinkCache(aas_routingcache_t *cache)
{
 if (aasworld.newestcache)
 {
  aasworld.newestcache->time_next = cache;
  cache->time_prev = aasworld.newestcache;
 }
 else
 {
  aasworld.oldestcache = cache;
  cache->time_prev = ((void*)0);
 }
 cache->time_next = ((void*)0);
 aasworld.newestcache = cache;
}
