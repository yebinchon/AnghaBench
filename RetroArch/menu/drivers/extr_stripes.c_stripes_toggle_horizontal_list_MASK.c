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
struct TYPE_7__ {scalar_t__ alpha; int /*<<< orphan*/  zoom; } ;
typedef  TYPE_1__ stripes_node_t ;
struct TYPE_8__ {size_t system_tab_end; unsigned int categories_active_idx; int depth; scalar_t__ categories_passive_alpha; int /*<<< orphan*/  categories_active_zoom; scalar_t__ categories_active_alpha; int /*<<< orphan*/  categories_passive_zoom; } ;
typedef  TYPE_2__ stripes_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_LIST_HORIZONTAL ; 
 TYPE_1__* FUNC0 (TYPE_2__*,unsigned int) ; 
 size_t FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(stripes_handle_t *stripes)
{
   unsigned i;
   size_t list_size = FUNC1(stripes, MENU_LIST_HORIZONTAL)
      + stripes->system_tab_end;

   for (i = 0; i <= list_size; i++)
   {
      stripes_node_t *node = FUNC0(stripes, i);

      if (!node)
         continue;

      node->alpha = 0;
      node->zoom  = stripes->categories_passive_zoom;

      if (i == stripes->categories_active_idx)
      {
         node->alpha = stripes->categories_active_alpha;
         node->zoom  = stripes->categories_active_zoom;
      }
      else if (stripes->depth <= 1)
         node->alpha = stripes->categories_passive_alpha;
   }
}