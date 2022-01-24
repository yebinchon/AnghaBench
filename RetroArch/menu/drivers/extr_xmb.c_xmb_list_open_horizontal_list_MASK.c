#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  alpha; } ;
typedef  TYPE_1__ xmb_node_t ;
struct TYPE_10__ {size_t system_tab_end; unsigned int categories_active_idx; float categories_active_alpha; int depth; float categories_passive_alpha; } ;
typedef  TYPE_2__ xmb_handle_t ;
struct TYPE_11__ {float target_value; int tag; int /*<<< orphan*/ * subject; int /*<<< orphan*/ * cb; int /*<<< orphan*/  easing_enum; int /*<<< orphan*/  duration; } ;
typedef  TYPE_3__ menu_animation_ctx_entry_t ;

/* Variables and functions */
 int /*<<< orphan*/  EASING_OUT_QUAD ; 
 int /*<<< orphan*/  MENU_LIST_HORIZONTAL ; 
 int /*<<< orphan*/  XMB_DELAY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,unsigned int) ; 
 size_t FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(xmb_handle_t *xmb)
{
   unsigned j;
   size_t list_size = FUNC2(xmb, MENU_LIST_HORIZONTAL)
      + xmb->system_tab_end;

   for (j = 0; j <= list_size; j++)
   {
      menu_animation_ctx_entry_t anim_entry;
      float ia          = 0;
      xmb_node_t *node  = FUNC1(xmb, j);

      if (!node)
         continue;

      if (j == xmb->categories_active_idx)
         ia = xmb->categories_active_alpha;
      else if (xmb->depth <= 1)
         ia = xmb->categories_passive_alpha;

      anim_entry.duration     = XMB_DELAY;
      anim_entry.target_value = ia;
      anim_entry.subject      = &node->alpha;
      anim_entry.easing_enum  = EASING_OUT_QUAD;
      /* TODO/FIXME - integer conversion resulted in change of sign */
      anim_entry.tag          = -1;
      anim_entry.cb           = NULL;

      if (anim_entry.subject)
         FUNC0(&anim_entry);
   }
}