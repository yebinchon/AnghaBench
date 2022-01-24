#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  secondary; int /*<<< orphan*/  primary; } ;
struct TYPE_8__ {TYPE_1__ thumbnails; } ;
typedef  TYPE_2__ materialui_node_t ;
struct TYPE_9__ {size_t size; } ;
typedef  TYPE_3__ file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,size_t) ; 
 scalar_t__ FUNC1 (TYPE_3__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(file_list_t *list)
{
   size_t i;
   size_t size = list ? list->size : 0;

   /* Must cancel pending thumbnail requests before
    * freeing node->thumbnails objects */
   FUNC2();

   for (i = 0; i < size; i++)
   {
      materialui_node_t *node = (materialui_node_t*)
            FUNC1(list, i);

      if (!node)
         continue;

      FUNC3(&node->thumbnails.primary);
      FUNC3(&node->thumbnails.secondary);
      FUNC0(list, i);
   }
}