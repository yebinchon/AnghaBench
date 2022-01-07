
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ planenum; struct TYPE_4__** children; int cluster; } ;
typedef TYPE_1__ node_t ;
struct TYPE_5__ {int cluster; } ;


 scalar_t__ PLANENUM_LEAF ;
 int clusterleaf ;
 TYPE_2__* dleafs ;

void SaveClusters_r (node_t *node)
{
 if (node->planenum == PLANENUM_LEAF)
 {
  dleafs[clusterleaf++].cluster = node->cluster;
  return;
 }
 SaveClusters_r (node->children[0]);
 SaveClusters_r (node->children[1]);
}
