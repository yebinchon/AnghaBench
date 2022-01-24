#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct string_list {size_t size; TYPE_1__* elems; } ;
typedef  int /*<<< orphan*/  prefixed ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 

bool FUNC3(const struct string_list *list,
      const char *prefix, const char *elem)
{
   size_t i;
   char prefixed[255];

   if (!list)
      return false;

   prefixed[0] = '\0';

   FUNC2(prefixed, prefix, sizeof(prefixed));
   FUNC1(prefixed, elem,   sizeof(prefixed));

   for (i = 0; i < list->size; i++)
   {
      if (FUNC0(list->elems[i].data, elem) ||
            FUNC0(list->elems[i].data, prefixed))
         return true;
   }

   return false;
}