
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * bounds; int (* storeLeafs ) (TYPE_1__*,int) ;} ;
typedef TYPE_1__ leafList_t ;
typedef int cplane_t ;
struct TYPE_7__ {int* children; int * plane; } ;
typedef TYPE_2__ cNode_t ;
struct TYPE_8__ {TYPE_2__* nodes; } ;


 int BoxOnPlaneSide (int ,int ,int *) ;
 TYPE_4__ cm ;
 int stub1 (TYPE_1__*,int) ;

void CM_BoxLeafnums_r( leafList_t *ll, int nodenum ) {
 cplane_t *plane;
 cNode_t *node;
 int s;

 while (1) {
  if (nodenum < 0) {
   ll->storeLeafs( ll, nodenum );
   return;
  }

  node = &cm.nodes[nodenum];
  plane = node->plane;
  s = BoxOnPlaneSide( ll->bounds[0], ll->bounds[1], plane );
  if (s == 1) {
   nodenum = node->children[0];
  } else if (s == 2) {
   nodenum = node->children[1];
  } else {

   CM_BoxLeafnums_r( ll, node->children[0] );
   nodenum = node->children[1];
  }

 }
}
