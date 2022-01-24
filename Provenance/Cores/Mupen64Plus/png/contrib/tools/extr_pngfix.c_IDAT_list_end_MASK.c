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
struct IDAT_list {struct IDAT_list* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct IDAT_list) ; 
 int /*<<< orphan*/  FUNC1 (struct IDAT_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct IDAT_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct IDAT_list*) ; 

__attribute__((used)) static void
FUNC4(struct IDAT_list *IDAT_list)
{
   struct IDAT_list *list = IDAT_list->next;

   FUNC0(*IDAT_list);

   while (list != NULL)
   {
      struct IDAT_list *next = list->next;

      FUNC2(list, FUNC1(list, 0));
      FUNC3(list);
      list = next;
   }
}