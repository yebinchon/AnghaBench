#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {struct TYPE_16__* next; struct TYPE_16__* prev; } ;
struct TYPE_15__ {TYPE_2__* first; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ MMAL_LIST_T ;
typedef  TYPE_2__ MMAL_LIST_ELEMENT_T ;
typedef  scalar_t__ (* MMAL_LIST_COMPARE_T ) (TYPE_2__*,TYPE_2__*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void FUNC4(MMAL_LIST_T *list, MMAL_LIST_ELEMENT_T *element, MMAL_LIST_COMPARE_T compare)
{
   MMAL_LIST_ELEMENT_T *cur;

   FUNC0(list);

   if (list->first == NULL)
   {
      /* List empty */
      FUNC3(list);
      FUNC2(list, element);
      return;
   }

   cur = list->first;
   while (cur)
   {
      if (compare(element, cur))
      {
         /* Slot found! */
         list->length++;
         if (cur == list->first)
            list->first = element;
         else
            cur->prev->next = element;
         element->prev = cur->prev;
         element->next = cur;
         cur->prev = element;
         FUNC3(list);
         return;
      }

      cur = cur->next;
   }

   /* If we get here, none of the existing elements are greater
    * than the new on, so just add it to the back of the list */
   FUNC3(list);
   FUNC1(list, element);
}