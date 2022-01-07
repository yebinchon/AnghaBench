
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {size_t numsides; TYPE_1__* sides; } ;
typedef TYPE_2__ bspbrush_t ;
struct TYPE_8__ {scalar_t__ winding; } ;


 TYPE_2__* AllocBrush (size_t) ;
 scalar_t__ CopyWinding (scalar_t__) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;

bspbrush_t *CopyBrush (bspbrush_t *brush)
{
 bspbrush_t *newbrush;
 int size;
 int i;

 size = (int)&(((bspbrush_t *)0)->sides[brush->numsides]);

 newbrush = AllocBrush (brush->numsides);
 memcpy (newbrush, brush, size);

 for (i=0 ; i<brush->numsides ; i++)
 {
  if (brush->sides[i].winding)
   newbrush->sides[i].winding = CopyWinding (brush->sides[i].winding);
 }

 return newbrush;
}
