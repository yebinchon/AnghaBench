#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {float entry_height; } ;
typedef  TYPE_1__ materialui_node_t ;
struct TYPE_5__ {unsigned int nav_bar_layout_height; } ;
typedef  TYPE_2__ materialui_handle_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 unsigned int FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned int*,unsigned int*) ; 

__attribute__((used)) static float FUNC5(materialui_handle_t *mui)
{
   file_list_t *list       = FUNC2(0);
   materialui_node_t *node = NULL;
   size_t selection        = FUNC3();
   unsigned header_height  = FUNC1();
   unsigned width          = 0;
   unsigned height         = 0;
   float view_centre       = 0.0f;
   float selection_centre  = 0.0f;
   size_t i;

   if (!mui || !list)
      return 0;

   /* Get current window size */
   FUNC4(&width, &height);

   /* Get the vertical midpoint of the actual
    * list view - i.e. account for header +
    * navigation bar */
   view_centre =
         (float)(height - header_height - mui->nav_bar_layout_height) / 2.0f;

   /* Get the vertical midpoint of the currently
    * selected entry */

   /* > Account for entries *before* current selection */
   for (i = 0; i < selection; i++)
   {
      node = (materialui_node_t*)FUNC0(list, i);

      /* If this ever happens, the scroll position
       * will be entirely wrong... */
      if (!node)
         continue;

      selection_centre += node->entry_height;
   }

   /* > Account for current selection */
   node = (materialui_node_t*)FUNC0(list, selection);
   if (node)
      selection_centre += node->entry_height / 2.0f;

   /* If selected entry is near the beginning of the list
    * (such that it fits within the first half of the
    * list view when the list is rendered from the start),
    * scroll position can be reset to zero */
   if (selection_centre < view_centre)
      return 0.0f;

   /* ...Otherwise, set the scroll position such that the
    * centre of the selected item is at the centre of the
    * list view */
   return selection_centre - view_centre;
}