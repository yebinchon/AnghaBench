
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int numLeafs; TYPE_1__* leafs; } ;
struct TYPE_3__ {int cluster; } ;


 int Com_Error (int ,char*) ;
 int ERR_DROP ;
 TYPE_2__ cm ;

int CM_LeafCluster( int leafnum ) {
 if (leafnum < 0 || leafnum >= cm.numLeafs) {
  Com_Error (ERR_DROP, "CM_LeafCluster: bad number");
 }
 return cm.leafs[leafnum].cluster;
}
