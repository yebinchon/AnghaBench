
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ winding; } ;
typedef TYPE_1__ side_t ;
struct TYPE_5__ {int numsides; TYPE_1__* original_sides; } ;
typedef TYPE_2__ mapbrush_t ;


 int FreeWinding (scalar_t__) ;

void FreeBrushWindings(mapbrush_t *brush)
{
 int n;
 side_t *side;

 for (n = 0; n < brush->numsides; n++)
 {
  side = brush->original_sides + n;

  if (side->winding) FreeWinding(side->winding);
 }
}
