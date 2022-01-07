
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int winding_t ;
typedef int vec3_t ;
struct TYPE_6__ {int faceflags; int * winding; int planenum; } ;
typedef TYPE_1__ tmp_face_t ;


 TYPE_1__* AAS_AllocTmpFace () ;
 int ClipWindingEpsilon (int *,int ,float,int ,int **,int **) ;
 int FACECLIP_EPSILON ;
 int FreeWinding (int *) ;
 int Log_Write (char*) ;
 scalar_t__ WindingIsTiny (int *) ;

void AAS_SplitFace(tmp_face_t *face, vec3_t normal, float dist,
       tmp_face_t **frontface, tmp_face_t **backface)
{
 winding_t *frontw, *backw;


 *frontface = *backface = ((void*)0);

 ClipWindingEpsilon(face->winding, normal, dist, FACECLIP_EPSILON, &frontw, &backw);
 if (frontw)
 {

  (*frontface) = AAS_AllocTmpFace();
  (*frontface)->planenum = face->planenum;
  (*frontface)->winding = frontw;
  (*frontface)->faceflags = face->faceflags;
 }
 if (backw)
 {

  (*backface) = AAS_AllocTmpFace();
  (*backface)->planenum = face->planenum;
  (*backface)->winding = backw;
  (*backface)->faceflags = face->faceflags;
 }
}
