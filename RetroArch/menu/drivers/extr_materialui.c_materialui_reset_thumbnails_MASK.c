#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  secondary; int /*<<< orphan*/  primary; } ;
struct TYPE_7__ {TYPE_1__ thumbnails; } ;
typedef  TYPE_2__ materialui_node_t ;
struct TYPE_8__ {unsigned int size; } ;
typedef  TYPE_3__ file_list_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,unsigned int) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(void)
{
   file_list_t *list = FUNC1(0);
   unsigned i;

   if (!list)
      return;

   /* Free node thumbnails */
   for (i = 0; i < list->size; i++)
   {
      materialui_node_t *node = (materialui_node_t*)
            FUNC0(list, i);

      if (!node)
         continue;

      FUNC2(&node->thumbnails.primary);
      FUNC2(&node->thumbnails.secondary);
   }
}