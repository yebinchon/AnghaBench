
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* backarea; TYPE_2__* frontarea; int planenum; int num; struct TYPE_5__** next; } ;
typedef TYPE_1__ tmp_face_t ;
struct TYPE_6__ {int areanum; TYPE_1__* tmpfaces; scalar_t__ invalid; } ;
typedef TYPE_2__ tmp_area_t ;


 int Log_Write (char*,int ,int ,int,...) ;

void AAS_CheckAreaSharedFaces(tmp_area_t *tmparea1, tmp_area_t *tmparea2)
{
 int numsharedfaces, side;
 tmp_face_t *face1, *sharedface;

 if (tmparea1->invalid || tmparea2->invalid) return;

 sharedface = ((void*)0);
 numsharedfaces = 0;
 for (face1 = tmparea1->tmpfaces; face1; face1 = face1->next[side])
 {
  side = face1->frontarea != tmparea1;
  if (face1->backarea == tmparea2 || face1->frontarea == tmparea2)
  {
   sharedface = face1;
   numsharedfaces++;
  }
 }
 if (!sharedface) return;

 if (numsharedfaces > 1)
 {
  Log_Write("---- tmp area %d and %d have %d shared faces\r\n",
         tmparea1->areanum, tmparea2->areanum, numsharedfaces);
  for (face1 = tmparea1->tmpfaces; face1; face1 = face1->next[side])
  {
   side = face1->frontarea != tmparea1;
   if (face1->backarea == tmparea2 || face1->frontarea == tmparea2)
   {
    Log_Write("face %d, planenum = %d, face->frontarea = %d face->backarea = %d\r\n",
        face1->num, face1->planenum, face1->frontarea->areanum, face1->backarea->areanum);
   }
  }
 }
}
