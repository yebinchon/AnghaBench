
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
typedef int qboolean ;
struct TYPE_6__ {int numedges; int firstedge; } ;
typedef TYPE_1__ aas_face_t ;
struct TYPE_7__ {size_t* v; } ;
typedef TYPE_2__ aas_edge_t ;
struct TYPE_9__ {int* edgeindex; int * vertexes; TYPE_2__* edges; int loaded; } ;
struct TYPE_8__ {int (* Print ) (int ,char*) ;} ;


 int AAS_OrthogonalToVectors (int ,int ,int ) ;
 float DotProduct (int ,int ) ;
 int PRT_MESSAGE ;
 int VectorCopy (int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_4__ aasworld ;
 size_t abs (int) ;
 TYPE_3__ botimport ;
 int qfalse ;
 int qtrue ;
 int stub1 (int ,char*) ;

qboolean AAS_InsideFace(aas_face_t *face, vec3_t pnormal, vec3_t point, float epsilon)
{
 int i, firstvertex, edgenum;
 vec3_t v0;
 vec3_t edgevec, pointvec, sepnormal;
 aas_edge_t *edge;




 if (!aasworld.loaded) return qfalse;

 for (i = 0; i < face->numedges; i++)
 {
  edgenum = aasworld.edgeindex[face->firstedge + i];
  edge = &aasworld.edges[abs(edgenum)];

  firstvertex = edgenum < 0;
  VectorCopy(aasworld.vertexes[edge->v[firstvertex]], v0);

  VectorSubtract(aasworld.vertexes[edge->v[!firstvertex]], v0, edgevec);
  VectorSubtract(point, v0, pointvec);





  AAS_OrthogonalToVectors(edgevec, pnormal, sepnormal);





  if (DotProduct(pointvec, sepnormal) < -epsilon) return qfalse;
 }
 return qtrue;
}
