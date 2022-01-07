
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef int qboolean ;
struct TYPE_10__ {int dist; int normal; } ;
typedef TYPE_2__ plane_t ;
struct TYPE_11__ {int firstedge; int numedges; scalar_t__ backarea; scalar_t__ frontarea; scalar_t__ faceflags; int planenum; } ;
typedef TYPE_3__ aas_face_t ;
struct TYPE_13__ {int numfaces; int edgeindexsize; int* edgeindex; TYPE_3__* faces; } ;
struct TYPE_12__ {int max_faces; int max_edgeindexsize; } ;


 int AAS_GetEdge (int ,int ,int*) ;
 int AAS_GetPlane (int ,int ,int *) ;
 int Error (char*,int) ;
 int Log_Write (char*,size_t,...) ;
 TYPE_6__ aasworld ;
 TYPE_5__ max_aas ;
 int memset (TYPE_3__*,int ,int) ;
 scalar_t__ verbose ;

qboolean AAS_GetFace(winding_t *w, plane_t *p, int side, int *facenum)
{
 int edgenum, i, j;
 aas_face_t *face;


 if (aasworld.numfaces == 0) aasworld.numfaces = 1;

 if (aasworld.numfaces >= max_aas.max_faces)
 {
  Error("AAS_MAX_FACES = %d", max_aas.max_faces);
 }
 face = &aasworld.faces[aasworld.numfaces];
 AAS_GetPlane(p->normal, p->dist, &face->planenum);
 face->faceflags = 0;
 face->firstedge = aasworld.edgeindexsize;
 face->frontarea = 0;
 face->backarea = 0;
 face->numedges = 0;
 for (i = 0; i < w->numpoints; i++)
 {
  if (aasworld.edgeindexsize >= max_aas.max_edgeindexsize)
  {
   Error("AAS_MAX_EDGEINDEXSIZE = %d", max_aas.max_edgeindexsize);
  }
  j = (i+1) % w->numpoints;
  AAS_GetEdge(w->p[i], w->p[j], &edgenum);

  if (edgenum)
  {
   aasworld.edgeindex[aasworld.edgeindexsize++] = edgenum;
   face->numedges++;
  }
  else if (verbose)
  {
   Log_Write("AAS_GetFace: face %d had degenerate edge %d-%d\r\n",
              aasworld.numfaces, i, j);
  }
 }
 if (face->numedges < 1



  )
 {
  memset(&aasworld.faces[aasworld.numfaces], 0, sizeof(aas_face_t));
  Log_Write("AAS_GetFace: face %d was tiny\r\n", aasworld.numfaces);
  return 0;
 }
 *facenum = aasworld.numfaces;
 aasworld.numfaces++;
 return 1;
}
