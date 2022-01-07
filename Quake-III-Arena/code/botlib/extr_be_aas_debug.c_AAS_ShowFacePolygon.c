
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_5__ {int numedges; int firstedge; } ;
typedef TYPE_1__ aas_face_t ;
struct TYPE_6__ {size_t* v; } ;
typedef TYPE_2__ aas_edge_t ;
struct TYPE_8__ {int numfaces; int* edgeindex; int * vertexes; TYPE_2__* edges; TYPE_1__* faces; } ;
struct TYPE_7__ {int (* Print ) (int ,char*,int) ;} ;


 int AAS_ShowPolygon (int,int,int *) ;
 int PRT_ERROR ;
 int VectorCopy (int ,int ) ;
 TYPE_4__ aasworld ;
 size_t abs (int) ;
 TYPE_3__ botimport ;
 int stub1 (int ,char*,int) ;

void AAS_ShowFacePolygon(int facenum, int color, int flip)
{
 int i, edgenum, numpoints;
 vec3_t points[128];
 aas_edge_t *edge;
 aas_face_t *face;


 if (facenum >= aasworld.numfaces)
 {
  botimport.Print(PRT_ERROR, "facenum %d out of range\n", facenum);
 }
 face = &aasworld.faces[facenum];

 numpoints = 0;
 if (flip)
 {
  for (i = face->numedges-1; i >= 0; i--)
  {

   edgenum = aasworld.edgeindex[face->firstedge + i];
   edge = &aasworld.edges[abs(edgenum)];
   VectorCopy(aasworld.vertexes[edge->v[edgenum < 0]], points[numpoints]);
   numpoints++;
  }
 }
 else
 {
  for (i = 0; i < face->numedges; i++)
  {

   edgenum = aasworld.edgeindex[face->firstedge + i];
   edge = &aasworld.edges[abs(edgenum)];
   VectorCopy(aasworld.vertexes[edge->v[edgenum < 0]], points[numpoints]);
   numpoints++;
  }
 }
 AAS_ShowPolygon(color, numpoints, points);
}
