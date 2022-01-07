
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ bspbrush_t ;


 int FreeBrush (TYPE_1__*) ;

void FreeBrushList (bspbrush_t *brushes)
{
 bspbrush_t *next;

 for ( ; brushes ; brushes = next)
 {
  next = brushes->next;

  FreeBrush (brushes);
 }
}
