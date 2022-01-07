
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_21__ {int planenum; TYPE_2__* backarea; TYPE_2__* frontarea; struct TYPE_21__** next; int * winding; } ;
typedef TYPE_1__ tmp_face_t ;
struct TYPE_22__ {int invalid; TYPE_1__* tmpfaces; int modelnum; int contents; int presencetype; int areanum; } ;
typedef TYPE_2__ tmp_area_t ;
struct TYPE_23__ {int dist; int normal; } ;
typedef TYPE_3__ plane_t ;


 int AAS_AddFaceSideToArea (TYPE_1__*,int,TYPE_2__*) ;
 TYPE_2__* AAS_AllocTmpArea () ;
 TYPE_1__* AAS_AllocTmpFace () ;
 int AAS_CheckArea (TYPE_2__*) ;
 int AAS_FlipAreaFaces (TYPE_2__*) ;
 int AAS_FreeTmpFace (TYPE_1__*) ;
 int AAS_RemoveFaceFromArea (TYPE_1__*,TYPE_2__*) ;
 int AAS_SplitFace (TYPE_1__*,int ,int ,TYPE_1__**,TYPE_1__**) ;
 int * AAS_SplitWinding (TYPE_2__*,int) ;
 int Error (char*,int ) ;
 int Log_Print (char*) ;
 TYPE_3__* mapplanes ;

void AAS_SplitArea(tmp_area_t *tmparea, int planenum, tmp_area_t **frontarea, tmp_area_t **backarea)
{
 int side;
 tmp_area_t *facefrontarea, *facebackarea, *faceotherarea;
 tmp_face_t *face, *frontface, *backface, *splitface, *nextface;
 winding_t *splitwinding;
 plane_t *splitplane;
 AAS_FlipAreaFaces(tmparea);
 AAS_CheckArea(tmparea);

 splitplane = &mapplanes[planenum];
 splitwinding = AAS_SplitWinding(tmparea, planenum);
 if (!splitwinding)
 {







  Error("AAS_SplitArea: no split winding when splitting area %d\n", tmparea->areanum);
 }

 splitface = AAS_AllocTmpFace();

 splitface->planenum = planenum;

 splitface->winding = splitwinding;

 (*frontarea) = AAS_AllocTmpArea();
 (*frontarea)->presencetype = tmparea->presencetype;
 (*frontarea)->contents = tmparea->contents;
 (*frontarea)->modelnum = tmparea->modelnum;
 (*frontarea)->tmpfaces = ((void*)0);

 (*backarea) = AAS_AllocTmpArea();
 (*backarea)->presencetype = tmparea->presencetype;
 (*backarea)->contents = tmparea->contents;
 (*backarea)->modelnum = tmparea->modelnum;
 (*backarea)->tmpfaces = ((void*)0);

 AAS_AddFaceSideToArea(splitface, 0, (*frontarea));
 AAS_AddFaceSideToArea(splitface, 1, (*backarea));


 for (face = tmparea->tmpfaces; face; face = nextface)
 {

  side = face->frontarea != tmparea;

  nextface = face->next[side];

  facefrontarea = face->frontarea;

  facebackarea = face->backarea;

  if (facefrontarea) AAS_RemoveFaceFromArea(face, facefrontarea);
  if (facebackarea) AAS_RemoveFaceFromArea(face, facebackarea);

  AAS_SplitFace(face, splitplane->normal, splitplane->dist, &frontface, &backface);

  AAS_FreeTmpFace(face);

  if (side) faceotherarea = facefrontarea;
  else faceotherarea = facebackarea;

  if (faceotherarea)
  {
   if (frontface) AAS_AddFaceSideToArea(frontface, !side, faceotherarea);
   if (backface) AAS_AddFaceSideToArea(backface, !side, faceotherarea);
  }

  if (frontface) AAS_AddFaceSideToArea(frontface, side, (*frontarea));
  if (backface) AAS_AddFaceSideToArea(backface, side, (*backarea));
 }

 if (!(*frontarea)->tmpfaces) Log_Print("AAS_SplitArea: front area without faces\n");
 if (!(*backarea)->tmpfaces) Log_Print("AAS_SplitArea: back area without faces\n");

 tmparea->invalid = 1;
 AAS_FlipAreaFaces((*frontarea));
 AAS_FlipAreaFaces((*backarea));

 AAS_CheckArea((*frontarea));
 AAS_CheckArea((*backarea));
}
