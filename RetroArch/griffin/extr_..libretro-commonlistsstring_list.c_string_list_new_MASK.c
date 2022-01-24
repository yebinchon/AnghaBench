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
struct string_list {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct string_list*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct string_list*) ; 

struct string_list *FUNC3(void)
{
   struct string_list *list = (struct string_list*)
      FUNC0(1, sizeof(*list));

   if (!list)
      return NULL;

   if (!FUNC1(list, 32))
   {
      FUNC2(list);
      return NULL;
   }

   return list;
}