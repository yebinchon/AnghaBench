#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_11__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ menu_materialui_auto_rotate_nav_bar; } ;
struct TYPE_20__ {scalar_t__ menu_materialui_landscape_layout_optimization; } ;
struct TYPE_26__ {TYPE_3__ bools; TYPE_2__ uints; } ;
typedef  TYPE_8__ settings_t ;
typedef  uintptr_t menu_animation_ctx_tag ;
struct TYPE_19__ {int /*<<< orphan*/  primary; int /*<<< orphan*/  secondary; } ;
struct TYPE_27__ {float y; int entry_height; TYPE_1__ thumbnails; } ;
typedef  TYPE_9__ materialui_node_t ;
struct TYPE_18__ {scalar_t__ type; scalar_t__ y; scalar_t__ x; scalar_t__ press_duration; int /*<<< orphan*/  dragged; scalar_t__ pressed; scalar_t__ y_accel; } ;
struct TYPE_25__ {int width; scalar_t__ dragged; scalar_t__ height; } ;
struct TYPE_23__ {scalar_t__ font; } ;
struct TYPE_22__ {scalar_t__ font; } ;
struct TYPE_24__ {TYPE_5__ hint; TYPE_4__ list; } ;
struct TYPE_17__ {float last_scale_factor; unsigned int last_width; unsigned int last_height; int last_landscape_layout_optimization; scalar_t__ last_auto_rotate_nav_bar; float dip_base_unit_size; int need_compute; float scroll_y; unsigned int nav_bar_layout_height; float content_height; size_t first_onscreen_entry; size_t last_onscreen_entry; scalar_t__ landscape_entry_margin; unsigned int nav_bar_layout_width; int touch_feedback_update_selection; size_t touch_feedback_selection; scalar_t__ list_view_type; int /*<<< orphan*/  playlist; int /*<<< orphan*/  thumbnail_path_data; scalar_t__ secondary_thumbnail_enabled; TYPE_11__ pointer; TYPE_7__ scrollbar; TYPE_6__ font_data; } ;
typedef  TYPE_10__ materialui_handle_t ;
typedef  scalar_t__ int16_t ;
typedef  int /*<<< orphan*/  file_list_t ;
typedef  enum materialui_landscape_layout_optimization_type { ____Placeholder_materialui_landscape_layout_optimization_type } materialui_landscape_layout_optimization_type ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENTRIES_CTL_SET_START ; 
 scalar_t__ MENU_INPUT_PRESS_TIME_SHORT ; 
 scalar_t__ MENU_POINTER_DISABLED ; 
 int /*<<< orphan*/  MENU_THUMBNAIL_RIGHT ; 
 float MUI_DIP_BASE_UNIT_SIZE ; 
 scalar_t__ MUI_LIST_VIEW_DEFAULT ; 
 scalar_t__ MUI_LIST_VIEW_PLAYLIST ; 
 int /*<<< orphan*/  MUI_ONSCREEN_ENTRY_CENTRE ; 
 TYPE_8__* FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_10__*,unsigned int,unsigned int,unsigned int) ; 
 float FUNC4 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (uintptr_t*) ; 
 float FUNC7 (unsigned int,unsigned int) ; 
 unsigned int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 size_t FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC15 (size_t) ; 
 int /*<<< orphan*/  FUNC16 (float) ; 
 int /*<<< orphan*/  FUNC17 (size_t) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 

__attribute__((used)) static void FUNC22(void *data,
      unsigned width, unsigned height,
      bool is_idle)
{
   settings_t *settings     = FUNC0();
   materialui_handle_t *mui = (materialui_handle_t*)data;
   unsigned header_height   = FUNC8();
   size_t entries_end       = FUNC13();
   file_list_t *list        = FUNC12(0);
   bool first_entry_found   = false;
   bool last_entry_found    = false;
   size_t i;
   float bottom;
   float scale_factor;

   if (!settings || !mui || !list)
      return;

   /* Check whether screen dimensions, menu scale
    * factor or layout optimisation settings have changed */
   scale_factor = FUNC7(width, height);

   if ((scale_factor != mui->last_scale_factor) ||
       (width != mui->last_width) ||
       (height != mui->last_height) ||
       ((enum materialui_landscape_layout_optimization_type)
            settings->uints.menu_materialui_landscape_layout_optimization !=
                  mui->last_landscape_layout_optimization) ||
       (settings->bools.menu_materialui_auto_rotate_nav_bar != mui->last_auto_rotate_nav_bar))
   {
      mui->dip_base_unit_size                 = scale_factor * MUI_DIP_BASE_UNIT_SIZE;
      mui->last_scale_factor                  = scale_factor;
      mui->last_width                         = width;
      mui->last_height                        = height;
      mui->last_landscape_layout_optimization =
            (enum materialui_landscape_layout_optimization_type)
                  settings->uints.menu_materialui_landscape_layout_optimization;
      mui->last_auto_rotate_nav_bar           = settings->bools.menu_materialui_auto_rotate_nav_bar;

      /* Screen dimensions/layout are going to change
       * > Once this happens, menu will scroll to the
       *   currently selected entry
       * > If selected entry is off screen, this will
       *   throw the user to an unexpected location
       * > To avoid this, we auto select the 'middle'
       *   on screen entry before readjusting the layout */
      FUNC2(mui, MUI_ONSCREEN_ENTRY_CENTRE);

      /* Note: We don't need a full context reset here
       * > Just rescale layout, and reset frame time counter */
      FUNC5(mui, FUNC20());
      FUNC21();
   }

   if (mui->need_compute)
   {
      menu_animation_ctx_tag tag = (uintptr_t)&mui->scroll_y;

      if (mui->font_data.list.font && mui->font_data.hint.font)
         FUNC3(mui, width, height, header_height);

      /* After calling populate_entries(), we need to call
       * materialui_get_scroll() so the last selected item
       * is correctly displayed on screen.
       * But we can't do this until materialui_compute_entries_box()
       * has been called, so we delay it until here, when
       * mui->need_compute is acted upon. */

      /* Kill any existing scroll animation */
      FUNC6(&tag);

      /* Reset scroll acceleration */
      FUNC16(0.0f);

      /* Get new scroll position */
      mui->scroll_y     = FUNC4(mui);
      mui->need_compute = false;
   }

   /* Need to update this each frame, otherwise touchscreen
    * input breaks when changing orientation */
   FUNC10(width);
   FUNC9(height);

   /* Read pointer state */
   FUNC14(&mui->pointer);

   /* Need to adjust/range-check scroll position first,
    * otherwise cannot determine correct entry index for
    * MENU_ENTRIES_CTL_SET_START */
   if (mui->pointer.type != MENU_POINTER_DISABLED)
   {
      /* If user is dragging the scrollbar, scroll
       * location is determined by current pointer
       * y position */
      if (mui->scrollbar.dragged)
      {
         float view_height  = (float)height - (float)header_height - (float)mui->nav_bar_layout_height;
         float view_y       = (float)mui->pointer.y - (float)header_height;
         float y_scroll_max = mui->content_height - view_height;

         /* Scroll position is just fraction of view height
          * multiplied by y_scroll_max...
          * ...but to achieve proper synchronisation with the
          * scrollbar, have to offset y position and limit
          * view height range... */
         view_y      -= (float)mui->scrollbar.width + ((float)mui->scrollbar.height / 2.0f);
         view_height -= (float)((2 * mui->scrollbar.width) + mui->scrollbar.height);

         if (view_height > 0.0f)
            mui->scroll_y = y_scroll_max * (view_y / view_height);
         else
            mui->scroll_y = 0.0f;
      }
      /* ...otherwise, just apply normal pointer
       * acceleration */
      else
         mui->scroll_y -= mui->pointer.y_accel;
   }

   if (mui->scroll_y < 0.0f)
      mui->scroll_y = 0.0f;

   bottom = mui->content_height - (float)height + (float)header_height + (float)mui->nav_bar_layout_height;
   if (mui->scroll_y > bottom)
      mui->scroll_y = bottom;

   if (mui->content_height < (height - header_height - mui->nav_bar_layout_height))
      mui->scroll_y = 0.0f;

   /* Loop over all entries */
   mui->first_onscreen_entry = 0;
   mui->last_onscreen_entry  = (entries_end > 0) ? entries_end - 1 : 0;

   for (i = 0; i < entries_end; i++)
   {
      materialui_node_t *node = (materialui_node_t*)
            FUNC1(list, i);
      int entry_y;

      /* Sanity check */
      if (!node)
         break;

      /* Get current entry y position */
      entry_y = (int)((float)header_height - mui->scroll_y + node->y);

      /* Check whether this is the first on screen entry */
      if (!first_entry_found)
      {
         if ((entry_y + (int)node->entry_height) > (int)header_height)
         {
            mui->first_onscreen_entry = i;
            first_entry_found = true;
         }
      }
      /* Check whether this is the last on screen entry */
      else if (!last_entry_found)
      {
         if (entry_y > ((int)height - (int)mui->nav_bar_layout_height))
         {
            /* Current entry is off screen - get index
             * of previous entry */
            if (i > 0)
            {
               mui->last_onscreen_entry = i - 1;
               last_entry_found = true;
            }
         }
      }

      /* Track pointer input, if required */
      if (first_entry_found &&
          !last_entry_found &&
          (mui->pointer.type != MENU_POINTER_DISABLED) &&
          !mui->scrollbar.dragged)
      {
         int16_t pointer_x = mui->pointer.x;
         int16_t pointer_y = mui->pointer.y;

         /* Check if pointer is within the 'list' region of
          * the window (i.e. exclude header, navigation bar,
          * landscape borders) */
         if ((pointer_x >  mui->landscape_entry_margin) &&
             (pointer_x <  width - mui->landscape_entry_margin - mui->nav_bar_layout_width) &&
             (pointer_y >= header_height) &&
             (pointer_y <= height - mui->nav_bar_layout_height))
         {
            /* Check if pointer is within the bounds of the
             * current entry */
            if ((pointer_y > entry_y) &&
                (pointer_y < (entry_y + node->entry_height)))
            {
               /* Pointer selection is always updated */
               FUNC15(i);

               /* If pointer is pressed and stationary... */
               if (mui->pointer.pressed && !mui->pointer.dragged)
               {
                  /* ...check whether feedback selection updates
                   * are enabled... */
                  if (mui->touch_feedback_update_selection)
                  {
                     /* ...apply touch feedback to current entry */
                     mui->touch_feedback_selection = i;

                     /* ...and if pointer has been held for at least
                      * MENU_INPUT_PRESS_TIME_SHORT ms, automatically
                      * select current entry */
                     if (mui->pointer.press_duration >= MENU_INPUT_PRESS_TIME_SHORT)
                     {
                        FUNC17(i);

                        /* Once an entry has been auto selected, disable
                         * touch feedback selection updates until the next
                         * pointer down event */
                        mui->touch_feedback_update_selection = false;
                     }
                  }
               }
            }
         }
      }

      /* If this is a playlist and thumbnails are enabled,
       * have to load thumbnails for all on-screen entries
       * and free thumbnails for all off-screen entries */
      if ((mui->list_view_type != MUI_LIST_VIEW_DEFAULT) &&
          (mui->list_view_type != MUI_LIST_VIEW_PLAYLIST))
      {
         bool on_screen = first_entry_found && !last_entry_found;

         if (mui->secondary_thumbnail_enabled)
            FUNC19(
               mui->thumbnail_path_data, mui->playlist, i,
               &node->thumbnails.primary, &node->thumbnails.secondary,
               on_screen);
         else
            FUNC18(
                  mui->thumbnail_path_data, MENU_THUMBNAIL_RIGHT,
                  mui->playlist, i, &node->thumbnails.primary, on_screen);
      }
      else if (last_entry_found)
         break;
   }

   FUNC11(MENU_ENTRIES_CTL_SET_START, &mui->first_onscreen_entry);
}