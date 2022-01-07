
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int numareas; TYPE_2__* areasettings; TYPE_1__* reachability; } ;
struct TYPE_5__ {int contents; int numreachableareas; int firstreachablearea; scalar_t__ cluster; } ;
struct TYPE_4__ {int areanum; } ;


 int AAS_FloodClusterAreas_r (int,int) ;
 int AREACONTENTS_CLUSTERPORTAL ;
 TYPE_3__ aasworld ;
 int qfalse ;
 int qtrue ;

int AAS_FloodClusterAreasUsingReachabilities(int clusternum)
{
 int i, j, areanum;

 for (i = 1; i < aasworld.numareas; i++)
 {

  if (aasworld.areasettings[i].cluster)
   continue;

  if (aasworld.areasettings[i].contents & AREACONTENTS_CLUSTERPORTAL)
   continue;

  for (j = 0; j < aasworld.areasettings[i].numreachableareas; j++)
  {

   areanum = aasworld.reachability[aasworld.areasettings[i].firstreachablearea + j].areanum;

   if (aasworld.areasettings[areanum].contents & AREACONTENTS_CLUSTERPORTAL)
    continue;

   if (aasworld.areasettings[areanum].cluster)
   {
    if (!AAS_FloodClusterAreas_r(i, clusternum))
     return qfalse;
    i = 0;
    break;
   }
  }
 }
 return qtrue;
}
