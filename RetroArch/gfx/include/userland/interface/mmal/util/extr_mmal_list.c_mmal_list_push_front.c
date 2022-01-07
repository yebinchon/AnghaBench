
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* prev; struct TYPE_8__* next; } ;
struct TYPE_7__ {TYPE_2__* first; TYPE_2__* last; int length; } ;
typedef TYPE_1__ MMAL_LIST_T ;
typedef TYPE_2__ MMAL_LIST_ELEMENT_T ;


 int mmal_list_lock (TYPE_1__*) ;
 int mmal_list_unlock (TYPE_1__*) ;

void mmal_list_push_front(MMAL_LIST_T *list, MMAL_LIST_ELEMENT_T *element)
{
   mmal_list_lock(list);

   list->length++;

   element->prev = ((void*)0);
   element->next = list->first;

   if (list->first)
      list->first->prev = element;
   else
      list->last = element;

   list->first = element;

   mmal_list_unlock(list);
}
