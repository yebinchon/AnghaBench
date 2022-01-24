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
struct buffer_list {struct buffer_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_list*) ; 

__attribute__((used)) static void
FUNC1(struct buffer_list *list)
{
   if (list != NULL)
   {
      struct buffer_list *next = list->next;
      FUNC0(list);
      FUNC1(next);
   }
}