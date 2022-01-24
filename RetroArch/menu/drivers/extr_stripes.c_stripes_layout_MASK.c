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
struct TYPE_7__ {float alpha; float label_alpha; float zoom; int x; void* y; } ;
typedef  TYPE_1__ stripes_node_t ;
struct TYPE_8__ {float items_passive_alpha; float items_passive_zoom; float items_active_alpha; int depth; int icon_size; int /*<<< orphan*/ * selection_buf_old; scalar_t__ selection_ptr_old; } ;
typedef  TYPE_2__ stripes_handle_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 size_t FUNC4 () ; 
 void* FUNC5 (TYPE_2__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int*,unsigned int*) ; 

__attribute__((used)) static void FUNC9(stripes_handle_t *stripes)
{
   unsigned width, height, i, current, end;
   file_list_t *selection_buf = FUNC2(0);
   size_t selection           = FUNC4();

   FUNC8(&width, &height);

   /* Mimic the layout of the PSP instead of the PS3 on tiny screens */
   if (width > 320 && height > 240)
      FUNC6(stripes, width, height);
   else
      FUNC7(stripes, width);

   current = (unsigned)selection;
   end     = (unsigned)FUNC3();

   for (i = 0; i < end; i++)
   {
      float ia         = stripes->items_passive_alpha;
      float iz         = stripes->items_passive_zoom;
      stripes_node_t *node = (stripes_node_t*)FUNC1(
            selection_buf, i);

      if (!node)
         continue;

      if (i == current)
      {
         ia             = stripes->items_active_alpha;
         iz             = stripes->items_active_alpha;
      }

      node->alpha       = ia;
      node->label_alpha = ia;
      node->zoom        = iz;
      node->y           = FUNC5(stripes, i, current);
   }

   if (stripes->depth <= 1)
      return;

   current = (unsigned)stripes->selection_ptr_old;
   end     = (unsigned)FUNC0(stripes->selection_buf_old);

   for (i = 0; i < end; i++)
   {
      float         ia = 0;
      float         iz = stripes->items_passive_zoom;
      stripes_node_t *node = (stripes_node_t*)FUNC1(
            stripes->selection_buf_old, i);

      if (!node)
         continue;

      if (i == current)
      {
         ia             = stripes->items_active_alpha;
         iz             = stripes->items_active_alpha;
      }

      node->alpha       = ia;
      node->label_alpha = 0;
      node->zoom        = iz;
      node->y           = FUNC5(stripes, i, current);
      node->x           = stripes->icon_size * 1 * -2;
   }
}