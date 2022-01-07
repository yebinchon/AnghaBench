
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int areanum; int frontcluster; scalar_t__* clusterareanum; } ;
typedef TYPE_2__ aas_portal_t ;
struct TYPE_7__ {int numportals; int firstportal; scalar_t__ numareas; scalar_t__ numreachabilityareas; } ;
typedef TYPE_3__ aas_cluster_t ;
struct TYPE_8__ {int numareas; int* portalindex; TYPE_2__* portals; TYPE_3__* clusters; TYPE_1__* areasettings; } ;
struct TYPE_5__ {int cluster; scalar_t__ clusterareanum; } ;


 scalar_t__ AAS_AreaReachability (int) ;
 TYPE_4__ aasworld ;

void AAS_NumberClusterAreas(int clusternum)
{
 int i, portalnum;
 aas_cluster_t *cluster;
 aas_portal_t *portal;

 aasworld.clusters[clusternum].numareas = 0;
 aasworld.clusters[clusternum].numreachabilityareas = 0;

 for (i = 1; i < aasworld.numareas; i++)
 {

  if (aasworld.areasettings[i].cluster != clusternum) continue;

  if (!AAS_AreaReachability(i)) continue;

  aasworld.areasettings[i].clusterareanum = aasworld.clusters[clusternum].numareas;

  aasworld.clusters[clusternum].numareas++;
  aasworld.clusters[clusternum].numreachabilityareas++;
 }

 cluster = &aasworld.clusters[clusternum];
 for (i = 0; i < cluster->numportals; i++)
 {
  portalnum = aasworld.portalindex[cluster->firstportal + i];
  portal = &aasworld.portals[portalnum];
  if (!AAS_AreaReachability(portal->areanum)) continue;
  if (portal->frontcluster == clusternum)
  {
   portal->clusterareanum[0] = cluster->numareas++;
   aasworld.clusters[clusternum].numreachabilityareas++;
  }
  else
  {
   portal->clusterareanum[1] = cluster->numareas++;
   aasworld.clusters[clusternum].numreachabilityareas++;
  }
 }

 for (i = 1; i < aasworld.numareas; i++)
 {

  if (aasworld.areasettings[i].cluster != clusternum) continue;

  if (AAS_AreaReachability(i)) continue;

  aasworld.areasettings[i].clusterareanum = aasworld.clusters[clusternum].numareas;

  aasworld.clusters[clusternum].numareas++;
 }

 cluster = &aasworld.clusters[clusternum];
 for (i = 0; i < cluster->numportals; i++)
 {
  portalnum = aasworld.portalindex[cluster->firstportal + i];
  portal = &aasworld.portals[portalnum];
  if (AAS_AreaReachability(portal->areanum)) continue;
  if (portal->frontcluster == clusternum)
  {
   portal->clusterareanum[0] = cluster->numareas++;
  }
  else
  {
   portal->clusterareanum[1] = cluster->numareas++;
  }
 }
}
