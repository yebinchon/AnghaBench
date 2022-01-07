
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int winding_t ;
typedef int vec3_t ;
struct TYPE_9__ {int aasfacenum; int planenum; int faceflags; int * winding; TYPE_2__* frontarea; struct TYPE_9__** next; } ;
typedef TYPE_1__ tmp_face_t ;
struct TYPE_10__ {int aasareanum; int settings; TYPE_1__* tmpfaces; scalar_t__ invalid; struct TYPE_10__* mergedarea; } ;
typedef TYPE_2__ tmp_area_t ;
typedef int plane_t ;
typedef size_t aas_faceindex_t ;
struct TYPE_11__ {int backarea; int frontarea; int numedges; int firstedge; int faceflags; } ;
typedef TYPE_3__ aas_face_t ;
struct TYPE_12__ {size_t* v; } ;
typedef TYPE_4__ aas_edge_t ;
struct TYPE_13__ {int areanum; double numfaces; scalar_t__ firstface; int center; int maxs; int mins; } ;
typedef TYPE_5__ aas_area_t ;
struct TYPE_15__ {scalar_t__ numareas; scalar_t__ faceindexsize; size_t* faceindex; int * vertexes; int * edgeindex; TYPE_4__* edges; TYPE_3__* faces; TYPE_5__* areas; } ;
struct TYPE_14__ {scalar_t__ max_areas; size_t max_faces; scalar_t__ max_faceindexsize; } ;


 int AAS_GetFace (int *,int *,int ,size_t*) ;
 int AAS_StoreAreaSettings (int ) ;
 int AddPointToBounds (int ,int ,int ) ;
 int ClearBounds (int ,int ) ;
 int Error (char*,...) ;
 int FreeWinding (int *) ;
 int * ReverseWinding (int *) ;
 int VectorAdd (int ,int ,int ) ;
 int VectorClear (int ) ;
 int VectorScale (int ,double,int ) ;
 TYPE_7__ aasworld ;
 size_t abs (int ) ;
 int * mapplanes ;
 TYPE_6__ max_aas ;
 int qprintf (char*,int) ;

int AAS_StoreArea(tmp_area_t *tmparea)
{
 int side, edgenum, i;
 plane_t *plane;
 tmp_face_t *tmpface;
 aas_area_t *aasarea;
 aas_edge_t *edge;
 aas_face_t *aasface;
 aas_faceindex_t aasfacenum;
 vec3_t facecenter;
 winding_t *w;




 while(tmparea->mergedarea) tmparea = tmparea->mergedarea;

 if (tmparea->invalid) Error("AAS_StoreArea: tried to store invalid area");

 if (tmparea->aasareanum) return -tmparea->aasareanum;

 if (aasworld.numareas >= max_aas.max_areas)
 {
  Error("AAS_MAX_AREAS = %d", max_aas.max_areas);
 }

 if (aasworld.numareas == 0) aasworld.numareas = 1;

 aasarea = &aasworld.areas[aasworld.numareas];
 aasarea->areanum = aasworld.numareas;
 aasarea->numfaces = 0;
 aasarea->firstface = aasworld.faceindexsize;
 ClearBounds(aasarea->mins, aasarea->maxs);
 VectorClear(aasarea->center);



 tmparea->aasareanum = aasarea->areanum;

 for (tmpface = tmparea->tmpfaces; tmpface; tmpface = tmpface->next[side])
 {
  side = tmpface->frontarea != tmparea;

  if (tmpface->aasfacenum)
  {

   aasfacenum = -tmpface->aasfacenum;






   aasface = &aasworld.faces[tmpface->aasfacenum];
   aasface->backarea = aasarea->areanum;
  }
  else
  {
   plane = &mapplanes[tmpface->planenum ^ side];
   if (side)
   {
    w = tmpface->winding;
    tmpface->winding = ReverseWinding(tmpface->winding);
   }
   if (!AAS_GetFace(tmpface->winding, plane, 0, &aasfacenum)) continue;
   if (side)
   {
    FreeWinding(tmpface->winding);
    tmpface->winding = w;
   }
   aasface = &aasworld.faces[aasfacenum];
   aasface->frontarea = aasarea->areanum;
   aasface->backarea = 0;
   aasface->faceflags = tmpface->faceflags;

   tmpface->aasfacenum = aasfacenum;
  }


  VectorClear(facecenter);
  for (edgenum = 0; edgenum < aasface->numedges; edgenum++)
  {
   edge = &aasworld.edges[abs(aasworld.edgeindex[aasface->firstedge + edgenum])];
   for (i = 0; i < 2; i++)
   {
    AddPointToBounds(aasworld.vertexes[edge->v[i]], aasarea->mins, aasarea->maxs);
    VectorAdd(aasworld.vertexes[edge->v[i]], facecenter, facecenter);
   }
  }
  VectorScale(facecenter, 1.0 / (aasface->numedges * 2.0), facecenter);

  VectorAdd(aasarea->center, facecenter, aasarea->center);

  if (aasworld.faceindexsize >= max_aas.max_faceindexsize)
  {
   Error("AAS_MAX_FACEINDEXSIZE = %d", max_aas.max_faceindexsize);
  }
  aasworld.faceindex[aasworld.faceindexsize++] = aasfacenum;
  aasarea->numfaces++;
 }

 if (!aasarea->numfaces) return 0;

 VectorScale(aasarea->center, 1.0 / aasarea->numfaces, aasarea->center);



 AAS_StoreAreaSettings(tmparea->settings);


 qprintf("\r%6d", aasarea->areanum);

 aasworld.numareas++;
 return -(aasworld.numareas - 1);
}
