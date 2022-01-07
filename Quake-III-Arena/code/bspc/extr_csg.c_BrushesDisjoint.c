
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_6__ {scalar_t__* mins; scalar_t__* maxs; int numsides; TYPE_1__* sides; } ;
typedef TYPE_2__ bspbrush_t ;
struct TYPE_5__ {int planenum; } ;



qboolean BrushesDisjoint (bspbrush_t *a, bspbrush_t *b)
{
 int i, j;


 for (i=0 ; i<3 ; i++)
  if (a->mins[i] >= b->maxs[i]
  || a->maxs[i] <= b->mins[i])
   return 1;


 for (i=0 ; i<a->numsides ; i++)
 {
  for (j=0 ; j<b->numsides ; j++)
  {
   if (a->sides[i].planenum ==
   (b->sides[j].planenum^1) )
    return 1;
  }
 }

 return 0;
}
