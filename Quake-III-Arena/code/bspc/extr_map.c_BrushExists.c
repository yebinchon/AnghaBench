
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int planenum; } ;
typedef TYPE_1__ side_t ;
struct TYPE_6__ {scalar_t__ entitynum; int numsides; TYPE_1__* original_sides; } ;
typedef TYPE_2__ mapbrush_t ;


 TYPE_2__* mapbrushes ;
 int nummapbrushes ;

int BrushExists(mapbrush_t *brush)
{
 int i, s1, s2;
 side_t *side1, *side2;
 mapbrush_t *brush1, *brush2;

 for (i = 0; i < nummapbrushes; i++)
 {
  brush1 = brush;
  brush2 = &mapbrushes[i];

  if (brush1->entitynum != brush2->entitynum) continue;

  if (brush1->numsides != brush2->numsides) continue;
  for (s1 = 0; s1 < brush1->numsides; s1++)
  {
   side1 = brush1->original_sides + s1;

   for (s2 = 0; s2 < brush2->numsides; s2++)
   {
    side2 = brush2->original_sides + s2;

    if ((side1->planenum & ~1) == (side2->planenum & ~1)



     ) break;
   }
   if (s2 >= brush2->numsides) break;
  }
  if (s1 >= brush1->numsides) return 1;
 }
 return 0;
}
