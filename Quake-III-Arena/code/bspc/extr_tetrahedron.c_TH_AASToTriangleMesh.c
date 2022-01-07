
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {struct TYPE_11__* next; } ;
typedef TYPE_2__ th_triangle_t ;
struct TYPE_12__ {int faceflags; } ;
typedef TYPE_3__ aas_face_t ;
struct TYPE_13__ {int numareas; TYPE_3__* faces; TYPE_1__* areas; int * faceindex; } ;
struct TYPE_10__ {int numfaces; int firstface; } ;


 int FACE_SOLID ;
 int TH_AddTriangleToList (TYPE_2__**,TYPE_2__*) ;
 TYPE_2__* TH_CreateAASFaceTriangles (TYPE_3__*) ;
 TYPE_4__ aasworld ;
 int abs (int ) ;

th_triangle_t *TH_AASToTriangleMesh(void)
{
 int i, j, facenum, otherareanum;
 aas_face_t *face;
 th_triangle_t *tri, *nexttri, *triangles;

 triangles = ((void*)0);
 for (i = 1; i < aasworld.numareas; i++)
 {

  for (j = 0; j < aasworld.areas[i].numfaces; j++)
  {
   facenum = abs(aasworld.faceindex[aasworld.areas[i].firstface + j]);
   face = &aasworld.faces[facenum];

   if (!(face->faceflags & FACE_SOLID))
   {





    continue;
   }

   tri = TH_CreateAASFaceTriangles(face);
   for (; tri; tri = nexttri)
   {
    nexttri = tri->next;
    TH_AddTriangleToList(&triangles, tri);
   }
  }
 }
 return triangles;
}
