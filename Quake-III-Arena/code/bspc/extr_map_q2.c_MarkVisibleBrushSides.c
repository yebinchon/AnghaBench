
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags; int planenum; } ;
typedef TYPE_1__ side_t ;
struct TYPE_7__ {int numsides; scalar_t__ leafnum; TYPE_1__* original_sides; } ;
typedef TYPE_2__ mapbrush_t ;
struct TYPE_8__ {size_t planenum; } ;
typedef TYPE_3__ dface_t ;


 int SFL_BEVEL ;
 int SFL_VISIBLE ;
 TYPE_3__* dfaces ;
 int* dplanes2mapplanes ;
 int numfaces ;

void MarkVisibleBrushSides(mapbrush_t *brush)
{
 int n, i, planenum;
 side_t *side;
 dface_t *face;

 for (n = 0; n < brush->numsides; n++)
 {
  side = brush->original_sides + n;

  if ((side->flags & SFL_BEVEL) || brush->leafnum < 0)
  {

   side->flags |= SFL_VISIBLE;
   continue;
  }

  side->flags &= ~SFL_VISIBLE;

  for (i = 0; i < numfaces; i++)
  {
   face = &dfaces[i];
   planenum = dplanes2mapplanes[face->planenum];
   if ((planenum & ~1) == (side->planenum & ~1))
   {

    side->flags |= SFL_VISIBLE;
   }
  }
 }
}
