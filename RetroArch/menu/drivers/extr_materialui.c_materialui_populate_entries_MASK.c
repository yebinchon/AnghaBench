#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  settings_t ;
struct TYPE_5__ {int is_playlist; int is_file_list; int is_dropdown_list; float touch_feedback_alpha; int touch_feedback_update_selection; int menu_stack_flushed; int need_compute; scalar_t__ touch_feedback_selection; int /*<<< orphan*/ * playlist; int /*<<< orphan*/  menu_title; } ;
typedef  TYPE_1__ materialui_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_CORE_UPDATER_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_DEFAULT_CORE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LABEL_DISPLAY_MODE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LEFT_THUMBNAIL_MODE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_RIGHT_THUMBNAIL_MODE ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_RESOLUTION ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_SPECIAL ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_IMAGES_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_MUSIC_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_FAVORITES ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_LOAD_CONTENT_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_SCAN_DIRECTORY ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_SCAN_FILE ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(
      void *data, const char *path,
      const char *label, unsigned i)
{
   materialui_handle_t *mui = (materialui_handle_t*)data;
   settings_t *settings     = FUNC0();

   if (!mui || !settings)
      return;

   /* Set menu title */
   FUNC4(mui->menu_title, sizeof(mui->menu_title));

   /* Check whether we are currently viewing a playlist,
    * file-browser-type list or dropdown list
    * (each of these is regarded as a 'plain' list,
    * and potentially a 'long' list, with special
    * gesture-based navigation shortcuts)  */
   mui->is_playlist      = false;
   mui->is_file_list     = false;
   mui->is_dropdown_list = false;

   mui->is_playlist = FUNC7(label, FUNC5(MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST)) ||
                      FUNC7(label, FUNC5(MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY)) ||
                      FUNC7(label, FUNC5(MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST));

   if (!mui->is_playlist)
   {
      /* > All of the following count as a 'file list'
       *   Note: MENU_ENUM_LABEL_FAVORITES is always set
       *   as the 'label' when navigating directories after
       *   selecting load content */
      mui->is_file_list = FUNC7(label, FUNC5(MENU_ENUM_LABEL_DEFERRED_CORE_UPDATER_LIST)) ||
                          FUNC7(label, FUNC5(MENU_ENUM_LABEL_SCAN_DIRECTORY)) ||
                          FUNC7(label, FUNC5(MENU_ENUM_LABEL_SCAN_FILE)) ||
                          FUNC7(label, FUNC5(MENU_ENUM_LABEL_DEFERRED_IMAGES_LIST)) ||
                          FUNC7(label, FUNC5(MENU_ENUM_LABEL_DEFERRED_MUSIC_LIST)) ||
                          FUNC7(label, FUNC5(MENU_ENUM_LABEL_LOAD_CONTENT_LIST)) ||
                          FUNC7(label, FUNC5(MENU_ENUM_LABEL_FAVORITES));

      if (!mui->is_file_list)
         mui->is_dropdown_list = FUNC7(label, FUNC5(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST)) ||
                                 FUNC7(label, FUNC5(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_SPECIAL)) ||
                                 FUNC7(label, FUNC5(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_RESOLUTION)) ||
                                 FUNC7(label, FUNC5(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_DEFAULT_CORE)) ||
                                 FUNC7(label, FUNC5(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LABEL_DISPLAY_MODE)) ||
                                 FUNC7(label, FUNC5(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_RIGHT_THUMBNAIL_MODE)) ||
                                 FUNC7(label, FUNC5(MENU_ENUM_LABEL_DEFERRED_DROPDOWN_BOX_LIST_PLAYLIST_LEFT_THUMBNAIL_MODE));
   }

   /* If this is a playlist, then cache it */
   if (mui->is_playlist)
      mui->playlist = FUNC6();
   else
      mui->playlist = NULL;

   /* Update navigation bar tabs */
   FUNC2(mui, label, settings);

   /* Update list view/thumbnail parameters */
   FUNC3(mui);

   /* Reset touch feedback parameters
    * (i.e. there should be no leftover highlight
    * animations when switching to a new list) */
   mui->touch_feedback_selection        = 0;
   mui->touch_feedback_alpha            = 0.0f;
   mui->touch_feedback_update_selection = false;

   /* Initialise menu transition animation */
   FUNC1(mui, settings);

   /* Reset 'menu stack flushed' state */
   mui->menu_stack_flushed = false;

   /* Note: mui->scroll_y position needs to be set here,
    * but we can't do this until materialui_compute_entries_box()
    * has been called. We therefore delegate it until mui->need_compute
    * is acted upon */
   mui->need_compute = true;
}