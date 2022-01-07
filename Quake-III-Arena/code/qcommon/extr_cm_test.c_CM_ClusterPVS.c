
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int byte ;
struct TYPE_2__ {int numClusters; int clusterBytes; int * visibility; int vised; } ;


 TYPE_1__ cm ;

byte *CM_ClusterPVS (int cluster) {
 if (cluster < 0 || cluster >= cm.numClusters || !cm.vised ) {
  return cm.visibility;
 }

 return cm.visibility + cluster * cm.clusterBytes;
}
