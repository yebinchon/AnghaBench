
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int faceflags; } ;
typedef TYPE_1__ aas_face_t ;
struct TYPE_6__ {int numfaces; int firstface; } ;
typedef TYPE_2__ aas_area_t ;
struct TYPE_7__ {int * faceindex; TYPE_1__* faces; TYPE_2__* areas; } ;


 scalar_t__ AAS_FaceArea (TYPE_1__*) ;
 int FACE_GROUND ;
 TYPE_3__ aasworld ;
 size_t abs (int ) ;

float AAS_AreaGroundFaceArea(int areanum)
{
 int i;
 float total;
 aas_area_t *area;
 aas_face_t *face;

 total = 0;
 area = &aasworld.areas[areanum];
 for (i = 0; i < area->numfaces; i++)
 {
  face = &aasworld.faces[abs(aasworld.faceindex[area->firstface + i])];
  if (!(face->faceflags & FACE_GROUND)) continue;

  total += AAS_FaceArea(face);
 }
 return total;
}
