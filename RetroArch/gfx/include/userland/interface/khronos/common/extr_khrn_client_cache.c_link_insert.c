
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* prev; struct TYPE_5__* next; } ;
typedef TYPE_1__ CACHE_LINK_T ;


 int vcos_assert (int) ;

__attribute__((used)) static void link_insert(CACHE_LINK_T *link, CACHE_LINK_T *prev, CACHE_LINK_T *next)
{
   vcos_assert(prev->next == next);
   vcos_assert(next->prev == prev);

   link->prev = prev;
   link->next = next;
   prev->next = link;
   next->prev = link;
}
