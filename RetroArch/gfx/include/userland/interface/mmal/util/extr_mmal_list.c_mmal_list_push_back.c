
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; struct TYPE_8__* prev; } ;
struct TYPE_7__ {TYPE_2__* last; TYPE_2__* first; int length; } ;
typedef TYPE_1__ MMAL_LIST_T ;
typedef TYPE_2__ MMAL_LIST_ELEMENT_T ;


 int mmal_list_lock (TYPE_1__*) ;
 int mmal_list_unlock (TYPE_1__*) ;

void mmal_list_push_back(MMAL_LIST_T *list, MMAL_LIST_ELEMENT_T *element)
{
   mmal_list_lock(list);

   list->length++;

   element->next = ((void*)0);
   element->prev = list->last;

   if (list->last)
      list->last->next = element;
   else
      list->first = element;

   list->last = element;

   mmal_list_unlock(list);
}
