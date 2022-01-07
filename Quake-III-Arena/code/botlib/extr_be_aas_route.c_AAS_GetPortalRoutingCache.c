
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int travelflags; int cluster; int areanum; int starttraveltime; int type; int time; struct TYPE_10__* prev; struct TYPE_10__* next; int origin; } ;
typedef TYPE_2__ aas_routingcache_t ;
struct TYPE_11__ {TYPE_2__** portalcache; TYPE_1__* areas; int numportals; } ;
struct TYPE_9__ {int center; } ;


 TYPE_2__* AAS_AllocRoutingCache (int ) ;
 int AAS_LinkCache (TYPE_2__*) ;
 int AAS_RoutingTime () ;
 int AAS_UnlinkCache (TYPE_2__*) ;
 int AAS_UpdatePortalRoutingCache (TYPE_2__*) ;
 int CACHETYPE_PORTAL ;
 int VectorCopy (int ,int ) ;
 TYPE_3__ aasworld ;

aas_routingcache_t *AAS_GetPortalRoutingCache(int clusternum, int areanum, int travelflags)
{
 aas_routingcache_t *cache;


 for (cache = aasworld.portalcache[areanum]; cache; cache = cache->next)
 {
  if (cache->travelflags == travelflags) break;
 }

 if (!cache)
 {
  cache = AAS_AllocRoutingCache(aasworld.numportals);
  cache->cluster = clusternum;
  cache->areanum = areanum;
  VectorCopy(aasworld.areas[areanum].center, cache->origin);
  cache->starttraveltime = 1;
  cache->travelflags = travelflags;

  cache->prev = ((void*)0);
  cache->next = aasworld.portalcache[areanum];
  if (aasworld.portalcache[areanum]) aasworld.portalcache[areanum]->prev = cache;
  aasworld.portalcache[areanum] = cache;

  AAS_UpdatePortalRoutingCache(cache);
 }
 else
 {
  AAS_UnlinkCache(cache);
 }

 cache->time = AAS_RoutingTime();
 cache->type = CACHETYPE_PORTAL;
 AAS_LinkCache(cache);
 return cache;
}
