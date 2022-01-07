
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ memhunk_t ;


 int FreeMemory (TYPE_1__*) ;
 TYPE_1__* memhunk_high ;
 int memhunk_high_size ;

void Hunk_ClearHigh(void)
{
 memhunk_t *h, *nexth;

 for (h = memhunk_high; h; h = nexth)
 {
  nexth = h->next;
  FreeMemory(h);
 }
 memhunk_high = ((void*)0);
 memhunk_high_size = 16 * 1024 * 1024;
}
