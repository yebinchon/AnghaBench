
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec_t ;
typedef int * vec3_t ;
typedef int qboolean ;
struct TYPE_5__ {int normal; } ;
typedef TYPE_1__ aas_plane_t ;
struct TYPE_6__ {size_t planenum; int numedges; int firstedge; } ;
typedef TYPE_2__ aas_face_t ;
struct TYPE_7__ {size_t* v; } ;
typedef TYPE_3__ aas_edge_t ;
struct TYPE_8__ {int* edgeindex; int ** vertexes; TYPE_3__* edges; TYPE_1__* planes; TYPE_2__* faces; int loaded; } ;


 int CrossProduct (int *,int ,int *) ;
 float DotProduct (int *,int *) ;
 int VectorSubtract (int *,int *,int *) ;
 TYPE_4__ aasworld ;
 size_t abs (int) ;
 int qfalse ;
 int qtrue ;

qboolean AAS_PointInsideFace(int facenum, vec3_t point, float epsilon)
{
 int i, firstvertex, edgenum;
 vec_t *v1, *v2;
 vec3_t edgevec, pointvec, sepnormal;
 aas_edge_t *edge;
 aas_plane_t *plane;
 aas_face_t *face;

 if (!aasworld.loaded) return qfalse;

 face = &aasworld.faces[facenum];
 plane = &aasworld.planes[face->planenum];

 for (i = 0; i < face->numedges; i++)
 {
  edgenum = aasworld.edgeindex[face->firstedge + i];
  edge = &aasworld.edges[abs(edgenum)];

  firstvertex = edgenum < 0;
  v1 = aasworld.vertexes[edge->v[firstvertex]];
  v2 = aasworld.vertexes[edge->v[!firstvertex]];

  VectorSubtract(v2, v1, edgevec);

  VectorSubtract(point, v1, pointvec);

  CrossProduct(edgevec, plane->normal, sepnormal);

  if (DotProduct(pointvec, sepnormal) < -epsilon) return qfalse;
 }
 return qtrue;
}
