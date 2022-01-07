
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {struct TYPE_16__* next; struct TYPE_16__* prev; } ;
struct TYPE_15__ {TYPE_2__* first; int length; } ;
typedef TYPE_1__ MMAL_LIST_T ;
typedef TYPE_2__ MMAL_LIST_ELEMENT_T ;
typedef scalar_t__ (* MMAL_LIST_COMPARE_T ) (TYPE_2__*,TYPE_2__*) ;


 int mmal_list_lock (TYPE_1__*) ;
 int mmal_list_push_back (TYPE_1__*,TYPE_2__*) ;
 int mmal_list_push_front (TYPE_1__*,TYPE_2__*) ;
 int mmal_list_unlock (TYPE_1__*) ;

void mmal_list_insert(MMAL_LIST_T *list, MMAL_LIST_ELEMENT_T *element, MMAL_LIST_COMPARE_T compare)
{
   MMAL_LIST_ELEMENT_T *cur;

   mmal_list_lock(list);

   if (list->first == ((void*)0))
   {

      mmal_list_unlock(list);
      mmal_list_push_front(list, element);
      return;
   }

   cur = list->first;
   while (cur)
   {
      if (compare(element, cur))
      {

         list->length++;
         if (cur == list->first)
            list->first = element;
         else
            cur->prev->next = element;
         element->prev = cur->prev;
         element->next = cur;
         cur->prev = element;
         mmal_list_unlock(list);
         return;
      }

      cur = cur->next;
   }



   mmal_list_unlock(list);
   mmal_list_push_back(list, element);
}
