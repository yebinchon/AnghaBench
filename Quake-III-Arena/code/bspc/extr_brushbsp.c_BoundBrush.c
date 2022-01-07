
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int numpoints; int * p; } ;
typedef TYPE_2__ winding_t ;
struct TYPE_7__ {int numsides; int maxs; int mins; TYPE_1__* sides; } ;
typedef TYPE_3__ bspbrush_t ;
struct TYPE_5__ {TYPE_2__* winding; } ;


 int AddPointToBounds (int ,int ,int ) ;
 int ClearBounds (int ,int ) ;

void BoundBrush (bspbrush_t *brush)
{
 int i, j;
 winding_t *w;

 ClearBounds (brush->mins, brush->maxs);
 for (i=0 ; i<brush->numsides ; i++)
 {
  w = brush->sides[i].winding;
  if (!w)
   continue;
  for (j=0 ; j<w->numpoints ; j++)
   AddPointToBounds (w->p[j], brush->mins, brush->maxs);
 }
}
