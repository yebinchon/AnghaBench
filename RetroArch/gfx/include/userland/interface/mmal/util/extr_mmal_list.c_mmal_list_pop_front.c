
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; int * prev; } ;
struct TYPE_7__ {int * last; TYPE_2__* first; int length; } ;
typedef TYPE_1__ MMAL_LIST_T ;
typedef TYPE_2__ MMAL_LIST_ELEMENT_T ;


 int mmal_list_lock (TYPE_1__*) ;
 int mmal_list_unlock (TYPE_1__*) ;

MMAL_LIST_ELEMENT_T* mmal_list_pop_front(MMAL_LIST_T *list)
{
   MMAL_LIST_ELEMENT_T *element;

   mmal_list_lock(list);

   element = list->first;
   if (element != ((void*)0))
   {
      list->length--;

      list->first = element->next;
      if (list->first)
         list->first->prev = ((void*)0);
      else
         list->last = ((void*)0);

      element->prev = ((void*)0);
      element->next = ((void*)0);
   }

   mmal_list_unlock(list);

   return element;
}
