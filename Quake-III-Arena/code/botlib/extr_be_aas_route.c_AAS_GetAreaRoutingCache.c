
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int travelflags; int cluster; int areanum; int starttraveltime; int type; int time; struct TYPE_12__* prev; struct TYPE_12__* next; int origin; } ;
typedef TYPE_3__ aas_routingcache_t ;
struct TYPE_13__ {TYPE_3__*** clusterareacache; TYPE_2__* areas; TYPE_1__* clusters; } ;
struct TYPE_11__ {int center; } ;
struct TYPE_10__ {int numreachabilityareas; } ;


 TYPE_3__* AAS_AllocRoutingCache (int ) ;
 int AAS_ClusterAreaNum (int,int) ;
 int AAS_LinkCache (TYPE_3__*) ;
 int AAS_RoutingTime () ;
 int AAS_UnlinkCache (TYPE_3__*) ;
 int AAS_UpdateAreaRoutingCache (TYPE_3__*) ;
 int CACHETYPE_AREA ;
 int VectorCopy (int ,int ) ;
 TYPE_4__ aasworld ;

aas_routingcache_t *AAS_GetAreaRoutingCache(int clusternum, int areanum, int travelflags)
{
 int clusterareanum;
 aas_routingcache_t *cache, *clustercache;


 clusterareanum = AAS_ClusterAreaNum(clusternum, areanum);

 clustercache = aasworld.clusterareacache[clusternum][clusterareanum];

 for (cache = clustercache; cache; cache = cache->next)
 {

  if (cache->travelflags == travelflags) break;
 }

 if (!cache)
 {
  cache = AAS_AllocRoutingCache(aasworld.clusters[clusternum].numreachabilityareas);
  cache->cluster = clusternum;
  cache->areanum = areanum;
  VectorCopy(aasworld.areas[areanum].center, cache->origin);
  cache->starttraveltime = 1;
  cache->travelflags = travelflags;
  cache->prev = ((void*)0);
  cache->next = clustercache;
  if (clustercache) clustercache->prev = cache;
  aasworld.clusterareacache[clusternum][clusterareanum] = cache;
  AAS_UpdateAreaRoutingCache(cache);
 }
 else
 {
  AAS_UnlinkCache(cache);
 }

 cache->time = AAS_RoutingTime();
 cache->type = CACHETYPE_AREA;
 AAS_LinkCache(cache);
 return cache;
}
