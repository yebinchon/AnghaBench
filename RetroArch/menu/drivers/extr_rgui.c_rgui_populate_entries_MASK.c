#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ menu_rgui_aspect_ratio_lock; } ;
struct TYPE_10__ {TYPE_1__ uints; } ;
typedef  TYPE_2__ settings_t ;
struct TYPE_11__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ rgui_video_settings_t ;
struct TYPE_12__ {int is_playlist; int thumbnail_load_pending; int ignore_resize_events; int /*<<< orphan*/  content_video_settings; int /*<<< orphan*/  menu_video_settings; int /*<<< orphan*/  menu_title; } ;
typedef  TYPE_4__ rgui_t ;

/* Variables and functions */
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_DEFERRED_VIDEO_SETTINGS_LIST ; 
 int /*<<< orphan*/  MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY ; 
 scalar_t__ RGUI_ASPECT_RATIO_LOCK_NONE ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void *data,
      const char *path,
      const char *label, unsigned k)
{
   rgui_t *rgui         = (rgui_t*)data;
   settings_t *settings = FUNC0();
   
   if (!rgui || !settings)
      return;
   
   /* Check whether we are currently viewing a playlist */
   rgui->is_playlist = FUNC7(label, FUNC2(MENU_ENUM_LABEL_DEFERRED_PLAYLIST_LIST)) ||
                       FUNC7(label, FUNC2(MENU_ENUM_LABEL_LOAD_CONTENT_HISTORY)) ||
                       FUNC7(label, FUNC2(MENU_ENUM_LABEL_DEFERRED_FAVORITES_LIST));
   
   /* Set menu title */
   FUNC1(rgui->menu_title, sizeof(rgui->menu_title));
   
   /* Cancel any pending thumbnail load operations */
   rgui->thumbnail_load_pending = false;
   
   FUNC5(data, true);
   
   /* If aspect ratio lock is enabled, must restore
    * content video settings when accessing the video
    * settings menu... */
   if (settings->uints.menu_rgui_aspect_ratio_lock != RGUI_ASPECT_RATIO_LOCK_NONE)
   {
      if (FUNC7(label, FUNC2(MENU_ENUM_LABEL_DEFERRED_VIDEO_SETTINGS_LIST)))
      {
         /* Make sure that any changes made while accessing
          * the video settings menu are preserved */
         rgui_video_settings_t current_video_settings = {0};
         FUNC3(&current_video_settings);
         if (FUNC4(&current_video_settings, &rgui->menu_video_settings))
         {
            FUNC6(rgui, &rgui->content_video_settings, false);
            /* Menu viewport has been overridden - must ignore
             * resize events until the menu is next toggled off */
            rgui->ignore_resize_events = true;
         }
      }
   }
}