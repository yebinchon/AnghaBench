
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int aas_routingcache_t ;
struct TYPE_4__ {int numclusters; TYPE_1__* clusters; int *** clusterareacache; } ;
struct TYPE_3__ {int numareas; } ;


 scalar_t__ GetClearedMemory (int) ;
 TYPE_2__ aasworld ;

void AAS_InitClusterAreaCache(void)
{
 int i, size;
 char *ptr;


 for (size = 0, i = 0; i < aasworld.numclusters; i++)
 {
  size += aasworld.clusters[i].numareas;
 }


 ptr = (char *) GetClearedMemory(
    aasworld.numclusters * sizeof(aas_routingcache_t **) +
    size * sizeof(aas_routingcache_t *));
 aasworld.clusterareacache = (aas_routingcache_t ***) ptr;
 ptr += aasworld.numclusters * sizeof(aas_routingcache_t **);
 for (i = 0; i < aasworld.numclusters; i++)
 {
  aasworld.clusterareacache[i] = (aas_routingcache_t **) ptr;
  ptr += aasworld.clusters[i].numareas * sizeof(aas_routingcache_t *);
 }
}
