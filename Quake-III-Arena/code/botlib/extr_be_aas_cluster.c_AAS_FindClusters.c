
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ numportals; int firstportal; scalar_t__ numreachabilityareas; scalar_t__ numareas; } ;
typedef TYPE_2__ aas_cluster_t ;
struct TYPE_6__ {int numareas; size_t numclusters; int portalindexsize; TYPE_2__* clusters; TYPE_1__* areasettings; } ;
struct TYPE_4__ {int contents; int numreachableareas; scalar_t__ cluster; } ;


 int AAS_Error (char*) ;
 int AAS_FloodClusterAreasUsingReachabilities (size_t) ;
 int AAS_FloodClusterAreas_r (int,size_t) ;
 size_t AAS_MAX_CLUSTERS ;
 int AAS_NumberClusterAreas (size_t) ;
 int AAS_RemoveClusterAreas () ;
 int AREACONTENTS_CLUSTERPORTAL ;
 TYPE_3__ aasworld ;
 scalar_t__ nofaceflood ;
 int qfalse ;
 int qtrue ;

int AAS_FindClusters(void)
{
 int i;
 aas_cluster_t *cluster;

 AAS_RemoveClusterAreas();

 for (i = 1; i < aasworld.numareas; i++)
 {

  if (aasworld.areasettings[i].cluster)
   continue;

  if (nofaceflood)
  {
   if (!aasworld.areasettings[i].numreachableareas)
    continue;
  }

  if (aasworld.areasettings[i].contents & AREACONTENTS_CLUSTERPORTAL)
   continue;
  if (aasworld.numclusters >= AAS_MAX_CLUSTERS)
  {
   AAS_Error("AAS_MAX_CLUSTERS");
   return qfalse;
  }
  cluster = &aasworld.clusters[aasworld.numclusters];
  cluster->numareas = 0;
  cluster->numreachabilityareas = 0;
  cluster->firstportal = aasworld.portalindexsize;
  cluster->numportals = 0;

  if (!AAS_FloodClusterAreas_r(i, aasworld.numclusters))
   return qfalse;
  if (!AAS_FloodClusterAreasUsingReachabilities(aasworld.numclusters))
   return qfalse;


  AAS_NumberClusterAreas(aasworld.numclusters);

  aasworld.numclusters++;
 }
 return qtrue;
}
