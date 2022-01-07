
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* portals; TYPE_1__* areasettings; } ;
struct TYPE_5__ {int frontcluster; int* clusterareanum; } ;
struct TYPE_4__ {int cluster; int clusterareanum; } ;


 TYPE_3__ aasworld ;

__inline int AAS_ClusterAreaNum(int cluster, int areanum)
{
 int side, areacluster;

 areacluster = aasworld.areasettings[areanum].cluster;
 if (areacluster > 0) return aasworld.areasettings[areanum].clusterareanum;
 else
 {
  side = aasworld.portals[-areacluster].frontcluster != cluster;
  return aasworld.portals[-areacluster].clusterareanum[side];
 }
}
