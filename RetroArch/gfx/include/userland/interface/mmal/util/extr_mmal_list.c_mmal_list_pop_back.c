
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * next; struct TYPE_8__* prev; } ;
struct TYPE_7__ {int * first; TYPE_2__* last; int length; } ;
typedef TYPE_1__ MMAL_LIST_T ;
typedef TYPE_2__ MMAL_LIST_ELEMENT_T ;


 int mmal_list_lock (TYPE_1__*) ;
 int mmal_list_unlock (TYPE_1__*) ;

MMAL_LIST_ELEMENT_T* mmal_list_pop_back(MMAL_LIST_T *list)
{
   MMAL_LIST_ELEMENT_T *element;

   mmal_list_lock(list);

   element = list->last;
   if (element != ((void*)0))
   {
      list->length--;

      list->last = element->prev;
      if (list->last)
         list->last->next = ((void*)0);
      else
         list->first = ((void*)0);

      element->prev = ((void*)0);
      element->next = ((void*)0);
   }

   mmal_list_unlock(list);

   return element;
}
