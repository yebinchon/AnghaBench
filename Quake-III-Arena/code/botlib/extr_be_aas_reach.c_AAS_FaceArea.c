
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec_t ;
typedef int vec3_t ;
struct TYPE_5__ {size_t firstedge; int numedges; } ;
typedef TYPE_1__ aas_face_t ;
struct TYPE_6__ {size_t* v; } ;
typedef TYPE_2__ aas_edge_t ;
struct TYPE_7__ {int* edgeindex; int ** vertexes; TYPE_2__* edges; } ;


 int CrossProduct (int ,int ,int ) ;
 double VectorLength (int ) ;
 int VectorSubtract (int *,int *,int ) ;
 TYPE_3__ aasworld ;
 size_t abs (int) ;

float AAS_FaceArea(aas_face_t *face)
{
 int i, edgenum, side;
 float total;
 vec_t *v;
 vec3_t d1, d2, cross;
 aas_edge_t *edge;

 edgenum = aasworld.edgeindex[face->firstedge];
 side = edgenum < 0;
 edge = &aasworld.edges[abs(edgenum)];
 v = aasworld.vertexes[edge->v[side]];

 total = 0;
 for (i = 1; i < face->numedges - 1; i++)
 {
  edgenum = aasworld.edgeindex[face->firstedge + i];
  side = edgenum < 0;
  edge = &aasworld.edges[abs(edgenum)];
  VectorSubtract(aasworld.vertexes[edge->v[side]], v, d1);
  VectorSubtract(aasworld.vertexes[edge->v[!side]], v, d2);
  CrossProduct(d1, d2, cross);
  total += 0.5 * VectorLength(cross);
 }
 return total;
}
