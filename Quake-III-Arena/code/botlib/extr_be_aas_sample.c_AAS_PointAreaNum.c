
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ vec_t ;
typedef int vec3_t ;
struct TYPE_5__ {scalar_t__ dist; int normal; } ;
typedef TYPE_1__ aas_plane_t ;
struct TYPE_6__ {size_t planenum; int* children; } ;
typedef TYPE_2__ aas_node_t ;
struct TYPE_8__ {int numnodes; size_t numplanes; TYPE_1__* planes; TYPE_2__* nodes; int loaded; } ;
struct TYPE_7__ {int (* Print ) (int ,char*) ;} ;


 scalar_t__ DotProduct (int ,int ) ;
 int PRT_ERROR ;
 int PRT_MESSAGE ;
 TYPE_4__ aasworld ;
 TYPE_3__ botimport ;
 int stub1 (int ,char*) ;
 int stub2 (int ,char*,int,int) ;
 int stub3 (int ,char*,size_t,size_t) ;
 int stub4 (int ,char*) ;

int AAS_PointAreaNum(vec3_t point)
{
 int nodenum;
 vec_t dist;
 aas_node_t *node;
 aas_plane_t *plane;

 if (!aasworld.loaded)
 {
  botimport.Print(PRT_ERROR, "AAS_PointAreaNum: aas not loaded\n");
  return 0;
 }


 nodenum = 1;
 while (nodenum > 0)
 {
  node = &aasworld.nodes[nodenum];







  plane = &aasworld.planes[node->planenum];
  dist = DotProduct(point, plane->normal) - plane->dist;
  if (dist > 0) nodenum = node->children[0];
  else nodenum = node->children[1];
 }
 if (!nodenum)
 {



  return 0;
 }
 return -nodenum;
}
