
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int winding_t ;
typedef int vec3_t ;
struct TYPE_9__ {int dist; int normal; } ;
typedef TYPE_1__ plane_t ;
struct TYPE_10__ {int normal; int dist; } ;
typedef TYPE_2__ dplane_t ;
struct TYPE_11__ {size_t planeNum; int* children; } ;
typedef TYPE_3__ dnode_t ;
struct TYPE_12__ {int cluster; size_t firstLeafBrush; int numLeafBrushes; } ;
typedef TYPE_4__ dleaf_t ;


 scalar_t__ DotProduct (int ,int ) ;
 int SIDE_BACK ;
 int SIDE_FRONT ;
 int SIDE_ON ;
 int VL_SplitWinding (int *,int *,TYPE_1__*,double) ;
 scalar_t__ VL_WindingAreaOutsideBrushes (int *,int *,int ) ;
 int VectorCopy (int ,int ) ;
 int * dleafbrushes ;
 TYPE_4__* dleafs ;
 TYPE_3__* dnodes ;
 TYPE_2__* dplanes ;

float VL_R_WindingAreaOutsideSolid(winding_t *w, vec3_t normal, int nodenum)
{
 int leafnum, res;
 float area;
 dnode_t *node;
 dleaf_t *leaf;
 dplane_t *plane;
 winding_t back;
 plane_t split;

 area = 0;
 while(nodenum >= 0)
 {
  node = &dnodes[nodenum];
  plane = &dplanes[node->planeNum];

  VectorCopy(plane->normal, split.normal);
  split.dist = plane->dist;
  res = VL_SplitWinding (w, &back, &split, 0.1);

  if (res == SIDE_FRONT)
  {
   nodenum = node->children[0];
  }
  else if (res == SIDE_BACK)
  {
   nodenum = node->children[1];
  }
  else if (res == SIDE_ON)
  {
   if (DotProduct(normal, plane->normal) > 0)
    nodenum = node->children[0];
   else
    nodenum = node->children[1];
  }
  else
  {
   area += VL_R_WindingAreaOutsideSolid(&back, normal, node->children[1]);
   nodenum = node->children[0];
  }
 }
 leafnum = -nodenum - 1;
 leaf = &dleafs[leafnum];
 if (leaf->cluster != -1)
 {
  area += VL_WindingAreaOutsideBrushes(w, &dleafbrushes[leaf->firstLeafBrush], leaf->numLeafBrushes);
 }
 return area;
}
