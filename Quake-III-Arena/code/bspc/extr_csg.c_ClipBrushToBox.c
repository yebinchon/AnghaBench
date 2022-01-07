
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_10__ {scalar_t__* maxs; scalar_t__* mins; int numsides; TYPE_1__* sides; } ;
typedef TYPE_2__ bspbrush_t ;
struct TYPE_9__ {int planenum; int flags; int texinfo; } ;


 int FreeBrush (TYPE_2__*) ;
 int SFL_VISIBLE ;
 int SplitBrush (TYPE_2__*,int,TYPE_2__**,TYPE_2__**) ;
 int TEXINFO_NODE ;
 int* maxplanenums ;
 int* minplanenums ;

bspbrush_t *ClipBrushToBox(bspbrush_t *brush, vec3_t clipmins, vec3_t clipmaxs)
{
 int i, j;
 bspbrush_t *front, *back;
 int p;

 for (j=0 ; j<2 ; j++)
 {
  if (brush->maxs[j] > clipmaxs[j])
  {
   SplitBrush (brush, maxplanenums[j], &front, &back);
   if (front)
    FreeBrush (front);
   brush = back;
   if (!brush)
    return ((void*)0);
  }
  if (brush->mins[j] < clipmins[j])
  {
   SplitBrush (brush, minplanenums[j], &front, &back);
   if (back)
    FreeBrush (back);
   brush = front;
   if (!brush)
    return ((void*)0);
  }
 }



 for (i=0 ; i<brush->numsides ; i++)
 {
  p = brush->sides[i].planenum & ~1;
  if (p == maxplanenums[0] || p == maxplanenums[1]
   || p == minplanenums[0] || p == minplanenums[1])
  {
   brush->sides[i].texinfo = TEXINFO_NODE;
   brush->sides[i].flags &= ~SFL_VISIBLE;
  }
 }
 return brush;
}
