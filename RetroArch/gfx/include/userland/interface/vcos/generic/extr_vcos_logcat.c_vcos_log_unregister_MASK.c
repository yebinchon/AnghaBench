#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ refcount; struct TYPE_5__* next; } ;
typedef  TYPE_1__ VCOS_LOG_CAT_T ;

/* Variables and functions */
 int /*<<< orphan*/  lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* vcos_logging_categories ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(VCOS_LOG_CAT_T *category)
{
   VCOS_LOG_CAT_T **pcat;

   FUNC2(&lock);
   category->refcount--;
   if (category->refcount == 0)
   {
      pcat = &vcos_logging_categories;
      while (*pcat != category)
      {
         if (!*pcat)
            break;   /* possibly deregistered twice? */
         if ((*pcat)->next == NULL)
         {
            FUNC0(0); /* already removed! */
            FUNC3(&lock);
            return;
         }
         pcat = &(*pcat)->next;
      }
      if (*pcat)
         *pcat = category->next;

      FUNC1(category);
   }
   FUNC3(&lock);
}