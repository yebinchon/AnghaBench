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
typedef  int /*<<< orphan*/  xmb_node_t ;
struct TYPE_8__ {TYPE_1__* list; } ;
typedef  TYPE_2__ file_list_t ;
struct TYPE_7__ {int /*<<< orphan*/ * userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(file_list_t *list, bool actiondata)
{
   unsigned i, size = (unsigned)FUNC1(list);

   for (i = 0; i < size; ++i)
   {
      FUNC3((xmb_node_t*)FUNC2(list, i));

      /* file_list_set_userdata() doesn't accept NULL */
      list->list[i].userdata = NULL;

      if (actiondata)
         FUNC0(list, i);
   }
}