#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct string_list_elem {int dummy; } ;
struct string_list {size_t cap; struct string_list_elem* elems; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct string_list_elem*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct string_list_elem*,size_t) ; 

__attribute__((used)) static bool FUNC2(struct string_list *list, size_t cap)
{
   struct string_list_elem *new_data = (struct string_list_elem*)
      FUNC1(list->elems, cap * sizeof(*new_data));

   if (!new_data)
      return false;

   if (cap > list->cap)
      FUNC0(&new_data[list->cap], 0, sizeof(*new_data) * (cap - list->cap));

   list->elems = new_data;
   list->cap   = cap;
   return true;
}