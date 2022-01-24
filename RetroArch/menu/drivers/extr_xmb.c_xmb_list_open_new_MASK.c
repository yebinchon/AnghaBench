#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {float alpha; float label_alpha; int x; float y; int /*<<< orphan*/  zoom; } ;
typedef  TYPE_1__ xmb_node_t ;
struct TYPE_13__ {int icon_size; float margins_screen_top; float items_active_alpha; float items_passive_alpha; int old_depth; int depth; int /*<<< orphan*/  thumbnail_path_data; scalar_t__ is_db_manager_list; scalar_t__ is_playlist; scalar_t__ categories_selection_ptr; int /*<<< orphan*/  categories_active_zoom; int /*<<< orphan*/  categories_passive_zoom; } ;
typedef  TYPE_2__ xmb_handle_t ;
struct TYPE_14__ {float target_value; float* subject; uintptr_t tag; int /*<<< orphan*/ * cb; int /*<<< orphan*/  easing_enum; int /*<<< orphan*/  duration; } ;
typedef  TYPE_3__ menu_animation_ctx_entry_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  EASING_OUT_QUAD ; 
 int /*<<< orphan*/  MENU_ENTRIES_CTL_SET_START ; 
 int /*<<< orphan*/  MENU_THUMBNAIL_LEFT ; 
 int /*<<< orphan*/  MENU_THUMBNAIL_RIGHT ; 
 int /*<<< orphan*/  XMB_DELAY ; 
 unsigned int XMB_SYSTEM_TAB_SETTINGS ; 
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int*) ; 
 unsigned int FUNC6 (TYPE_2__*,unsigned int) ; 
 float FUNC7 (TYPE_2__*,unsigned int,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,char) ; 

__attribute__((used)) static void FUNC12(xmb_handle_t *xmb,
      file_list_t *list, int dir, size_t current)
{
   unsigned i, height;
   unsigned xmb_system_tab = 0;
   size_t skip             = 0;
   int        threshold    = xmb->icon_size * 10;
   size_t           end    = FUNC0(list);

   FUNC5(NULL, &height);

   for (i = 0; i < end; i++)
   {
      float ia;
      float real_y;
      xmb_node_t *node = (xmb_node_t*)
         FUNC1(list, i);

      if (!node)
         continue;

      if (dir == 1)
      {
         node->alpha       = 0;
         node->label_alpha = 0;
      }
      else if (dir == -1)
      {
         if (i != current)
            node->alpha    = 0;
         node->label_alpha = 0;
      }

      node->x        = xmb->icon_size * dir * 2;
      node->y        = FUNC7(xmb, i, current);
      node->zoom     = xmb->categories_passive_zoom;

      real_y         = node->y + xmb->margins_screen_top;

      if (i == current)
      {
         node->zoom  = xmb->categories_active_zoom;
         ia          = xmb->items_active_alpha;
      }
      else
         ia          = xmb->items_passive_alpha;

      if (real_y < -threshold || real_y > height+threshold)
      {
         node->alpha = node->label_alpha = ia;
         node->x     = 0;
      }
      else
      {
         menu_animation_ctx_entry_t anim_entry;

         anim_entry.duration     = XMB_DELAY;
         anim_entry.target_value = ia;
         anim_entry.subject      = &node->alpha;
         anim_entry.easing_enum  = EASING_OUT_QUAD;
         anim_entry.tag          = (uintptr_t)list;
         anim_entry.cb           = NULL;

         FUNC2(&anim_entry);

         anim_entry.subject      = &node->label_alpha;

         FUNC2(&anim_entry);

         anim_entry.target_value = 0;
         anim_entry.subject      = &node->x;

         FUNC2(&anim_entry);
      }
   }

   xmb->old_depth = xmb->depth;
   FUNC3(MENU_ENTRIES_CTL_SET_START, &skip);

   xmb_system_tab = FUNC6(xmb,
         (unsigned)xmb->categories_selection_ptr);

   if (xmb_system_tab <= XMB_SYSTEM_TAB_SETTINGS)
   {
      if (  FUNC4(xmb->thumbnail_path_data, MENU_THUMBNAIL_RIGHT) || 
            FUNC4(xmb->thumbnail_path_data, MENU_THUMBNAIL_LEFT))
      {
         /* This code is horrible, full of hacks...
          * This hack ensures that thumbnails are not cleared
          * when selecting an entry from a collection via
          * 'load content'... */
         if (xmb->depth != 5)
            FUNC9(xmb);

         if (xmb->is_playlist || xmb->is_db_manager_list)
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
}