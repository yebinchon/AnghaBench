
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef TYPE_3__ aas_routingcache_t ;
struct TYPE_9__ {int numareas; TYPE_3__** portalcache; TYPE_1__* portals; TYPE_2__* areasettings; } ;
struct TYPE_7__ {int cluster; } ;
struct TYPE_6__ {int frontcluster; int backcluster; } ;


 int AAS_FreeRoutingCache (TYPE_3__*) ;
 int AAS_RemoveRoutingCacheInCluster (int) ;
 TYPE_4__ aasworld ;

void AAS_RemoveRoutingCacheUsingArea( int areanum )
{
 int i, clusternum;
 aas_routingcache_t *cache, *nextcache;

 clusternum = aasworld.areasettings[areanum].cluster;
 if (clusternum > 0)
 {

  AAS_RemoveRoutingCacheInCluster( clusternum );
 }
 else
 {

  AAS_RemoveRoutingCacheInCluster( aasworld.portals[-clusternum].frontcluster );
  AAS_RemoveRoutingCacheInCluster( aasworld.portals[-clusternum].backcluster );
 }

 for (i = 0; i < aasworld.numareas; i++)
 {

  for (cache = aasworld.portalcache[i]; cache; cache = nextcache)
  {
   nextcache = cache->next;
   AAS_FreeRoutingCache(cache);
  }
  aasworld.portalcache[i] = ((void*)0);
 }
}
