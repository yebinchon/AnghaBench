
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ bspbrush_t ;


 int assert (int) ;

void CheckBrushLists(bspbrush_t *brushlist1, bspbrush_t *brushlist2)
{
 bspbrush_t *brush1, *brush2;

 for (brush1 = brushlist1; brush1; brush1 = brush1->next)
 {
  for (brush2 = brushlist2; brush2; brush2 = brush2->next)
  {
   assert(brush1 != brush2);
  }
 }
}
