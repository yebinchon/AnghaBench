
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vec_t ;
typedef int vec3_t ;
struct TYPE_5__ {scalar_t__ dist; int normal; } ;
typedef TYPE_1__ dplane_t ;
struct TYPE_6__ {size_t planeNum; int* children; } ;
typedef TYPE_2__ dnode_t ;


 scalar_t__ DotProduct (int ,int ) ;
 TYPE_2__* dnodes ;
 TYPE_1__* dplanes ;

__attribute__((used)) static int PointInLeafnum(vec3_t point)
{
 int nodenum;
 vec_t dist;
 dnode_t *node;
 dplane_t *plane;

 nodenum = 0;
 while (nodenum >= 0)
 {
  node = &dnodes[nodenum];
  plane = &dplanes[node->planeNum];
  dist = DotProduct (point, plane->normal) - plane->dist;
  if (dist > 0)
   nodenum = node->children[0];
  else
   nodenum = node->children[1];
 }

 return -nodenum - 1;
}
