#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int depth; int old_depth; int icon_size; int /*<<< orphan*/  textures_arrow_alpha; int /*<<< orphan*/  x; int /*<<< orphan*/  selection_ptr_old; int /*<<< orphan*/  selection_buf_old; } ;
typedef  TYPE_2__ xmb_handle_t ;
struct TYPE_12__ {int menu_xmb_animation_opening_main_menu; } ;
struct TYPE_14__ {TYPE_1__ uints; } ;
typedef  TYPE_3__ settings_t ;
struct TYPE_15__ {int target_value; int tag; int duration; int /*<<< orphan*/ * subject; int /*<<< orphan*/  easing_enum; int /*<<< orphan*/ * cb; } ;
typedef  TYPE_4__ menu_animation_ctx_entry_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  EASING_OUT_BOUNCE ; 
 int /*<<< orphan*/  EASING_OUT_CIRC ; 
 int /*<<< orphan*/  EASING_OUT_EXPO ; 
 int /*<<< orphan*/  EASING_OUT_QUAD ; 
 int /*<<< orphan*/  MENU_LIST_PLAIN ; 
 int XMB_DELAY ; 
 TYPE_3__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(xmb_handle_t *xmb)
{
   menu_animation_ctx_entry_t entry;

   settings_t *settings       = FUNC0();
   int                    dir = 0;
   file_list_t *selection_buf = FUNC2(0);
   size_t selection           = FUNC3();

   xmb->depth = (int)FUNC4(xmb, MENU_LIST_PLAIN);

   if (xmb->depth > xmb->old_depth)
      dir = 1;
   else if (xmb->depth < xmb->old_depth)
      dir = -1;
   else
      return; /* If menu hasn't changed, do nothing */

   FUNC5(xmb);

   FUNC7(xmb, xmb->selection_buf_old,
         dir, xmb->selection_ptr_old);
   FUNC6(xmb, selection_buf,
         dir, selection);

   /* Main Menu opening animation */

   entry.target_value = xmb->icon_size * -(xmb->depth*2-2);
   entry.subject      = &xmb->x;
   /* TODO/FIXME - integer conversion resulted in change of sign */
   entry.tag          = -1;
   entry.cb           = NULL;

   switch (settings->uints.menu_xmb_animation_opening_main_menu)
   {
      case 0:
         entry.easing_enum  = EASING_OUT_QUAD;
         entry.duration     = XMB_DELAY;
         break;
      case 1:
         entry.easing_enum  = EASING_OUT_CIRC;
         entry.duration     = XMB_DELAY * 2;
         break;
      case 2:
         entry.easing_enum  = EASING_OUT_EXPO;
         entry.duration     = XMB_DELAY * 3;
         break;
      case 3:
         entry.easing_enum  = EASING_OUT_BOUNCE;
         entry.duration     = XMB_DELAY * 4;
         break;
   }

   switch (xmb->depth)
   {
      case 1:
      case 2:
         FUNC1(&entry);

         entry.target_value = xmb->depth - 1;
         entry.subject      = &xmb->textures_arrow_alpha;

         FUNC1(&entry);
         break;
   }

   xmb->old_depth = xmb->depth;
}