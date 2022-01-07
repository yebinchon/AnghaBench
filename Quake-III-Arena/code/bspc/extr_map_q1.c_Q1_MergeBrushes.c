
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ side; struct TYPE_8__* next; } ;
typedef TYPE_1__ bspbrush_t ;


 int FreeBrush (TYPE_1__*) ;
 TYPE_1__* TryMergeBrushes (TYPE_1__*,TYPE_1__*) ;
 int qprintf (char*,...) ;

bspbrush_t *Q1_MergeBrushes(bspbrush_t *brushlist, int modelnum)
{
 int nummerges, merged;
 bspbrush_t *b1, *b2, *tail, *newbrush, *newbrushlist;
 bspbrush_t *lastb2;

 if (!brushlist) return ((void*)0);

 if (!modelnum) qprintf("%5d brushes merged", nummerges = 0);
 do
 {
  for (tail = brushlist; tail; tail = tail->next)
  {
   if (!tail->next) break;
  }
  merged = 0;
  newbrushlist = ((void*)0);
  for (b1 = brushlist; b1; b1 = brushlist)
  {
   lastb2 = b1;
   for (b2 = b1->next; b2; b2 = b2->next)
   {

    if (b1->side != b2->side) newbrush = ((void*)0);
    else newbrush = TryMergeBrushes(b1, b2);

    if (newbrush)
    {

     newbrush->side = b1->side;

     tail->next = newbrush;

     lastb2->next = b2->next;

     brushlist = brushlist->next;

     FreeBrush(b1);
     FreeBrush(b2);

     for (tail = brushlist; tail; tail = tail->next)
     {
      if (!tail->next) break;
     }
     merged++;
     if (!modelnum) qprintf("\r%5d", nummerges++);
     break;
    }
    lastb2 = b2;
   }

   if (!b2)
   {
    brushlist = brushlist->next;

    b1->next = newbrushlist;
    newbrushlist = b1;
   }
  }
  brushlist = newbrushlist;
 } while(merged);
 if (!modelnum) qprintf("\n");
 return newbrushlist;
}
