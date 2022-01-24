#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ categories_selection_ptr; scalar_t__ categories_selection_ptr_old; int categories_active_idx; float icon_spacing_horizontal; unsigned int categories_active_idx_old; int /*<<< orphan*/  thumbnail_path_data; scalar_t__ is_playlist; int /*<<< orphan*/  selection_ptr_old; int /*<<< orphan*/  selection_buf_old; int /*<<< orphan*/  categories_x_pos; } ;
typedef  TYPE_2__ xmb_handle_t ;
struct TYPE_15__ {scalar_t__ menu_horizontal_animation; } ;
struct TYPE_17__ {TYPE_1__ bools; } ;
typedef  TYPE_3__ settings_t ;
struct TYPE_18__ {float target_value; int tag; int /*<<< orphan*/ * subject; int /*<<< orphan*/ * cb; int /*<<< orphan*/  easing_enum; int /*<<< orphan*/  duration; } ;
typedef  TYPE_4__ menu_animation_ctx_entry_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  EASING_OUT_QUAD ; 
 int /*<<< orphan*/  MENU_THUMBNAIL_LEFT ; 
 int /*<<< orphan*/  MENU_THUMBNAIL_RIGHT ; 
 int /*<<< orphan*/  XMB_DELAY ; 
 TYPE_3__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static void FUNC12(xmb_handle_t *xmb)
{
   menu_animation_ctx_entry_t anim_entry;
   int dir                    = -1;
   file_list_t *selection_buf = FUNC2(0);
   size_t selection           = FUNC3();
   settings_t *settings = FUNC0();

   if (xmb->categories_selection_ptr > xmb->categories_selection_ptr_old)
      dir = 1;

   xmb->categories_active_idx += dir;

   FUNC5(xmb);

   anim_entry.duration     = XMB_DELAY;
   anim_entry.target_value = xmb->icon_spacing_horizontal
      * -(float)xmb->categories_selection_ptr;
   anim_entry.subject      = &xmb->categories_x_pos;
   anim_entry.easing_enum  = EASING_OUT_QUAD;
   /* TODO/FIXME - integer conversion resulted in change of sign */
   anim_entry.tag          = -1;
   anim_entry.cb           = NULL;

   if (anim_entry.subject)
      FUNC1(&anim_entry);

   dir = -1;
   if (xmb->categories_selection_ptr > xmb->categories_selection_ptr_old)
      dir = 1;

   FUNC7(xmb, xmb->selection_buf_old,
         dir, xmb->selection_ptr_old);

   /* Check if we are to have horizontal animations. */
   if (settings->bools.menu_horizontal_animation)
      FUNC6(xmb, selection_buf, dir, selection);
   xmb->categories_active_idx_old = (unsigned)xmb->categories_selection_ptr;

   if (FUNC4(xmb->thumbnail_path_data, MENU_THUMBNAIL_RIGHT) ||
       FUNC4(xmb->thumbnail_path_data, MENU_THUMBNAIL_LEFT))
   {
      FUNC9(xmb);

      if (xmb->is_playlist)
      {
         FUNC8(xmb, NULL);

         if (FUNC4(xmb->thumbnail_path_data, MENU_THUMBNAIL_RIGHT))
            FUNC11(xmb, 0 /* will be ignored */, 'R');

         if (FUNC4(xmb->thumbnail_path_data, MENU_THUMBNAIL_LEFT))
            FUNC11(xmb, 0 /* will be ignored */, 'L');

         FUNC10(xmb);
      }
   }
}