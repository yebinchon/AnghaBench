#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_frame_info_t ;
struct TYPE_15__ {int path_enabled; int value_enabled; int sublabel_enabled; } ;
typedef  TYPE_2__ menu_entry_t ;
typedef  int /*<<< orphan*/  materialui_node_t ;
struct TYPE_14__ {int /*<<< orphan*/  dragged; } ;
struct TYPE_16__ {float touch_feedback_alpha; size_t touch_feedback_selection; size_t first_onscreen_entry; size_t last_onscreen_entry; int list_view_type; TYPE_1__ scrollbar; } ;
typedef  TYPE_3__ materialui_handle_t ;
typedef  int /*<<< orphan*/  file_list_t ;

/* Variables and functions */
#define  MUI_LIST_VIEW_DEFAULT 133 
#define  MUI_LIST_VIEW_PLAYLIST 132 
#define  MUI_LIST_VIEW_PLAYLIST_THUMB_DUAL_ICON 131 
#define  MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_LARGE 130 
#define  MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_MEDIUM 129 
#define  MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_SMALL 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int,int,unsigned int,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int,int,unsigned int,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int,int,unsigned int,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 unsigned int FUNC5 () ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 size_t FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 size_t FUNC10 () ; 
 size_t FUNC11 () ; 

__attribute__((used)) static void FUNC12(
      materialui_handle_t *mui,
      video_frame_info_t *video_info,
      unsigned width, unsigned height,
      int x_offset)
{
   size_t i;
   size_t first_entry;
   size_t last_entry;
   file_list_t *list           = NULL;
   size_t entries_end          = FUNC7();
   unsigned header_height      = FUNC5();
   size_t selection            = FUNC11();
   bool touch_feedback_enabled =
         !mui->scrollbar.dragged &&
         (mui->touch_feedback_alpha >= 0.5f) &&
         (mui->touch_feedback_selection == FUNC10());

   list = FUNC6(0);
   if (!list)
      return;

   /* Unnecessary sanity check... */
   first_entry = (mui->first_onscreen_entry < entries_end) ? mui->first_onscreen_entry : entries_end;
   last_entry  = (mui->last_onscreen_entry  < entries_end) ? mui->last_onscreen_entry  : entries_end;

   for (i = first_entry; i <= last_entry; i++)
   {
      bool entry_selected        = (selection == i);
      bool touch_feedback_active = touch_feedback_enabled && (mui->touch_feedback_selection == i);
      materialui_node_t *node    = (materialui_node_t*)FUNC0(list, i);
      menu_entry_t entry;

      /* Sanity check */
      if (!node)
         break;

      /* Get current entry */
      FUNC9(&entry);
      entry.path_enabled     = false;
      entry.value_enabled    = (mui->list_view_type == MUI_LIST_VIEW_DEFAULT);
      entry.sublabel_enabled = (mui->list_view_type != MUI_LIST_VIEW_PLAYLIST_THUMB_DUAL_ICON);
      FUNC8(&entry, 0, i, NULL, true);

      /* Render label, value, and associated icons
       * TODO/FIXME: Yes, I know this is ugly...
       * Once we refactor the code to enable alternative
       * non-list-type view modes (e.g. grid, coverflow),
       * this sort of thing will be handled via function
       * pointers (we'll need these in several places:
       * handling pointer input, loading thumbnails,
       * menu drawing, selection highlight drawing,
       * etc.). Until then, a simple switch (and a bunch
       * of duplicated code in the two render_menu_entry
       * functions) will suffice... */
      switch (mui->list_view_type)
      {
         case MUI_LIST_VIEW_PLAYLIST:
         case MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_SMALL:
         case MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_MEDIUM:
         case MUI_LIST_VIEW_PLAYLIST_THUMB_LIST_LARGE:
            FUNC3(
                  mui,
                  video_info,
                  node,
                  &entry,
                  entry_selected,
                  touch_feedback_active,
                  header_height,
                  width,
                  height,
                  x_offset);
            break;
         case MUI_LIST_VIEW_PLAYLIST_THUMB_DUAL_ICON:
            FUNC2(
                  mui,
                  video_info,
                  node,
                  &entry,
                  entry_selected,
                  touch_feedback_active,
                  header_height,
                  width,
                  height,
                  x_offset);
            break;
         case MUI_LIST_VIEW_DEFAULT:
         default:
            FUNC1(
                  mui,
                  video_info,
                  node,
                  &entry,
                  entry_selected,
                  touch_feedback_active,
                  header_height,
                  width,
                  height,
                  x_offset);
            break;
      }
   }

   /* Draw scrollbar */
   FUNC4(
         mui, video_info, width, height);
}