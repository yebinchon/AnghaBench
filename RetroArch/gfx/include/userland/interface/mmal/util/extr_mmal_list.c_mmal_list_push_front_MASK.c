#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* prev; struct TYPE_8__* next; } ;
struct TYPE_7__ {TYPE_2__* first; TYPE_2__* last; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ MMAL_LIST_T ;
typedef  TYPE_2__ MMAL_LIST_ELEMENT_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(MMAL_LIST_T *list, MMAL_LIST_ELEMENT_T *element)
{
   FUNC0(list);

   list->length++;

   element->prev = NULL;
   element->next = list->first;

   if (list->first)
      list->first->prev = element;
   else
      list->last = element; /* list was empty */

   list->first = element;

   FUNC1(list);
}