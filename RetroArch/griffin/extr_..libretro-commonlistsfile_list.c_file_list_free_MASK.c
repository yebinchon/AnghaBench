#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t size; struct TYPE_6__* list; struct TYPE_6__* alt; struct TYPE_6__* label; struct TYPE_6__* path; } ;
typedef  TYPE_1__ file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(file_list_t *list)
{
   size_t i;

   if (!list)
      return;

   for (i = 0; i < list->size; i++)
   {
      FUNC1(list, i);
      FUNC0(list, i);

      if (list->list[i].path)
         FUNC2(list->list[i].path);
      list->list[i].path = NULL;

      if (list->list[i].label)
         FUNC2(list->list[i].label);
      list->list[i].label = NULL;

      if (list->list[i].alt)
         FUNC2(list->list[i].alt);
      list->list[i].alt = NULL;
   }
   if (list->list)
      FUNC2(list->list);
   list->list = NULL;
   FUNC2(list);
}