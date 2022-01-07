
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_6__ {int normal; } ;
typedef TYPE_1__ aas_plane_t ;
struct TYPE_7__ {int numedges; int firstedge; size_t planenum; } ;
typedef TYPE_2__ aas_face_t ;
struct TYPE_8__ {size_t* v; } ;
typedef TYPE_3__ aas_edge_t ;
struct TYPE_10__ {int numfaces; int numedges; int * vertexes; TYPE_3__* edges; int * edgeindex; TYPE_1__* planes; TYPE_2__* faces; } ;
struct TYPE_9__ {int (* Print ) (int ,char*,int) ;} ;


 int AAS_DebugLine (int ,int ,int) ;
 int LINECOLOR_BLUE ;
 int LINECOLOR_GREEN ;
 int LINECOLOR_RED ;
 int LINECOLOR_YELLOW ;
 int PRT_ERROR ;
 int VectorCopy (int ,int ) ;
 int VectorMA (int ,int,int ,int ) ;
 TYPE_5__ aasworld ;
 int abs (int ) ;
 TYPE_4__ botimport ;
 int stub1 (int ,char*,int) ;
 int stub2 (int ,char*,int) ;

void AAS_ShowFace(int facenum)
{
 int i, color, edgenum;
 aas_edge_t *edge;
 aas_face_t *face;
 aas_plane_t *plane;
 vec3_t start, end;

 color = LINECOLOR_YELLOW;

 if (facenum >= aasworld.numfaces)
 {
  botimport.Print(PRT_ERROR, "facenum %d out of range\n", facenum);
 }
 face = &aasworld.faces[facenum];

 for (i = 0; i < face->numedges; i++)
 {

  edgenum = abs(aasworld.edgeindex[face->firstedge + i]);

  if (edgenum >= aasworld.numedges)
  {
   botimport.Print(PRT_ERROR, "edgenum %d out of range\n", edgenum);
  }
  edge = &aasworld.edges[edgenum];
  if (color == LINECOLOR_RED) color = LINECOLOR_GREEN;
  else if (color == LINECOLOR_GREEN) color = LINECOLOR_BLUE;
  else if (color == LINECOLOR_BLUE) color = LINECOLOR_YELLOW;
  else color = LINECOLOR_RED;
  AAS_DebugLine(aasworld.vertexes[edge->v[0]],
          aasworld.vertexes[edge->v[1]],
          color);
 }
 plane = &aasworld.planes[face->planenum];
 edgenum = abs(aasworld.edgeindex[face->firstedge]);
 edge = &aasworld.edges[edgenum];
 VectorCopy(aasworld.vertexes[edge->v[0]], start);
 VectorMA(start, 20, plane->normal, end);
 AAS_DebugLine(start, end, LINECOLOR_RED);
}
