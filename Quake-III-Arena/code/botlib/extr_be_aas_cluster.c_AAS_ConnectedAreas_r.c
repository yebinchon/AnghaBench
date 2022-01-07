
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int faceflags; int frontarea; int backarea; } ;
typedef TYPE_1__ aas_face_t ;
struct TYPE_5__ {int numfaces; int firstface; } ;
typedef TYPE_2__ aas_area_t ;
struct TYPE_6__ {TYPE_1__* faces; int * faceindex; TYPE_2__* areas; } ;


 int FACE_SOLID ;
 TYPE_3__ aasworld ;
 int abs (int ) ;
 int qtrue ;

void AAS_ConnectedAreas_r(int *areanums, int numareas, int *connectedareas, int curarea)
{
 int i, j, otherareanum, facenum;
 aas_area_t *area;
 aas_face_t *face;

 connectedareas[curarea] = qtrue;
 area = &aasworld.areas[areanums[curarea]];
 for (i = 0; i < area->numfaces; i++)
 {
  facenum = abs(aasworld.faceindex[area->firstface + i]);
  face = &aasworld.faces[facenum];

  if (face->faceflags & FACE_SOLID) continue;

  if (face->frontarea != areanums[curarea]) otherareanum = face->frontarea;
  else otherareanum = face->backarea;

  for (j = 0; j < numareas; j++)
  {
   if (areanums[j] == otherareanum) break;
  }

  if (j == numareas) continue;

  if (connectedareas[j]) continue;

  AAS_ConnectedAreas_r(areanums, numareas, connectedareas, j);
 }
}
