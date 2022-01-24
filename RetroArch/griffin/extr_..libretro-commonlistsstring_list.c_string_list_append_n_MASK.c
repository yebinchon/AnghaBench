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
typedef  union string_list_elem_attr {int dummy; } string_list_elem_attr ;
struct string_list {int size; int cap; TYPE_1__* elems; } ;
struct TYPE_2__ {char* data; union string_list_elem_attr attr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,unsigned int) ; 

bool FUNC3(struct string_list *list, const char *elem,
      unsigned length, union string_list_elem_attr attr)
{
   char *data_dup = NULL;

   if (list->size >= list->cap &&
         !FUNC1(list, list->cap * 2))
      return false;

   data_dup = (char*)FUNC0(length + 1);

   if (!data_dup)
      return false;

   FUNC2(data_dup, elem, length + 1);

   list->elems[list->size].data = data_dup;
   list->elems[list->size].attr = attr;

   list->size++;
   return true;
}