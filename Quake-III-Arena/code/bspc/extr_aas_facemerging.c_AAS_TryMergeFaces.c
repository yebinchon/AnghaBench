
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_7__ {scalar_t__ faceflags; scalar_t__ frontarea; scalar_t__ backarea; size_t planenum; int num; int * winding; } ;
typedef TYPE_1__ tmp_face_t ;
struct TYPE_8__ {int normal; } ;


 int AAS_FreeTmpFace (TYPE_1__*) ;
 int AAS_RemoveFaceFromArea (TYPE_1__*,scalar_t__) ;
 int Error (char*,int ) ;
 int FreeWinding (int *) ;
 int Log_Write (char*,int ,int ) ;
 int * MergeWindings (int *,int *,int ) ;
 int * TryMergeWinding (int *,int *,int ) ;
 TYPE_2__* mapplanes ;

int AAS_TryMergeFaces(tmp_face_t *face1, tmp_face_t *face2)
{
 winding_t *neww;






 if (face1->faceflags != face2->faceflags) return 0;



 if (face1->frontarea == face2->frontarea)
 {

  if (face1->backarea == face2->backarea)
  {

   if (face1->planenum == face2->planenum)
   {

    if (face1->frontarea && face1->backarea)
    {
     neww = MergeWindings(face1->winding, face2->winding,
        mapplanes[face1->planenum].normal);
    }
    else
    {

     neww = TryMergeWinding(face1->winding, face2->winding,
         mapplanes[face1->planenum].normal);
    }
    if (neww)
    {
     FreeWinding(face1->winding);
     face1->winding = neww;
     if (face2->frontarea) AAS_RemoveFaceFromArea(face2, face2->frontarea);
     if (face2->backarea) AAS_RemoveFaceFromArea(face2, face2->backarea);
     AAS_FreeTmpFace(face2);
     return 1;
    }
   }
   else if ((face1->planenum & ~1) == (face2->planenum & ~1))
   {
    Log_Write("face %d and %d, same front and back area but flipped planes\r\n",
       face1->num, face2->num);
   }
  }
 }
 return 0;
}
