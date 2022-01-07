
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int planeNum; int* children; int dist; int normal; int type; } ;
typedef TYPE_1__ tnode_t ;
struct TYPE_8__ {int dist; int normal; } ;
typedef TYPE_2__ dplane_t ;
struct TYPE_9__ {int planeNum; int* children; } ;
typedef TYPE_3__ dnode_t ;
struct TYPE_10__ {int cluster; } ;


 int PlaneTypeForNormal (int ) ;
 int VectorCopy (int ,int ) ;
 TYPE_6__* dleafs ;
 TYPE_3__* dnodes ;
 TYPE_2__* dplanes ;
 int tnode_p ;
 int tnodes ;

void MakeTnode (int nodenum)
{
 tnode_t *t;
 dplane_t *plane;
 int i;
 dnode_t *node;
 int leafNum;

 t = tnode_p++;

 node = dnodes + nodenum;
 plane = dplanes + node->planeNum;

 t->planeNum = node->planeNum;
 t->type = PlaneTypeForNormal( plane->normal );
 VectorCopy (plane->normal, t->normal);
 t->dist = plane->dist;

 for (i=0 ; i<2 ; i++)
 {
  if (node->children[i] < 0) {
   leafNum = -node->children[i] - 1;
   if ( dleafs[leafNum].cluster == -1 ) {

    t->children[i] = leafNum | ( 1 << 31 ) | ( 1 << 30 );
   } else {
    t->children[i] = leafNum | ( 1 << 31 );
   }
  } else {
   t->children[i] = tnode_p - tnodes;
   MakeTnode (node->children[i]);
  }
 }

}
