
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ aas_routingcache_t ;
struct TYPE_7__ {int numareas; } ;
typedef TYPE_2__ aas_cluster_t ;
struct TYPE_8__ {int numclusters; TYPE_1__*** clusterareacache; TYPE_2__* clusters; } ;


 int AAS_FreeRoutingCache (TYPE_1__*) ;
 int FreeMemory (TYPE_1__***) ;
 TYPE_3__ aasworld ;

void AAS_FreeAllClusterAreaCache(void)
{
 int i, j;
 aas_routingcache_t *cache, *nextcache;
 aas_cluster_t *cluster;


 if (!aasworld.clusterareacache) return;

 for (i = 0; i < aasworld.numclusters; i++)
 {
  cluster = &aasworld.clusters[i];
  for (j = 0; j < cluster->numareas; j++)
  {
   for (cache = aasworld.clusterareacache[i][j]; cache; cache = nextcache)
   {
    nextcache = cache->next;
    AAS_FreeRoutingCache(cache);
   }
   aasworld.clusterareacache[i][j] = ((void*)0);
  }
 }

 FreeMemory(aasworld.clusterareacache);
 aasworld.clusterareacache = ((void*)0);
}
