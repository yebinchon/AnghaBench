
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int winding_t ;
typedef int vsound_t ;
struct TYPE_8__ {int dist; int normal; } ;
typedef TYPE_1__ plane_t ;
struct TYPE_9__ {int dist; int normal; } ;
typedef TYPE_2__ dplane_t ;
struct TYPE_10__ {size_t planeNum; int* children; } ;
typedef TYPE_3__ dnode_t ;
struct TYPE_11__ {int cluster; } ;


 int SIDE_BACK ;
 int SIDE_FRONT ;
 int SIDE_ON ;
 int VS_FloodRadialAreaLight (int *,int *,int) ;
 int VS_SplitWinding (int *,int *,TYPE_1__*,double) ;
 int VectorCopy (int ,int ) ;
 TYPE_6__* dleafs ;
 TYPE_3__* dnodes ;
 TYPE_2__* dplanes ;
 int memcpy (int *,int *,int) ;

void VS_R_SubdivideRadialAreaLight(vsound_t *light, int nodenum, winding_t *w)
{
 int leafnum, res;
 dnode_t *node;
 dplane_t *plane;
 winding_t back;
 plane_t split;

 while(nodenum >= 0)
 {
  node = &dnodes[nodenum];
  plane = &dplanes[node->planeNum];

  VectorCopy(plane->normal, split.normal);
  split.dist = plane->dist;
  res = VS_SplitWinding (w, &back, &split, 0.1);

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
   memcpy(&back, w, sizeof(winding_t));
   VS_R_SubdivideRadialAreaLight(light, node->children[1], &back);
   nodenum = node->children[0];
  }
  else
  {
   VS_R_SubdivideRadialAreaLight(light, node->children[1], &back);
   nodenum = node->children[0];
  }
 }
 leafnum = -nodenum - 1;
 if (dleafs[leafnum].cluster != -1)
 {
  VS_FloodRadialAreaLight(light, w, leafnum);
 }
}
