#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_15__ ;

/* Type definitions */
struct TYPE_21__ {scalar_t__ width; scalar_t__ height; } ;
typedef  TYPE_4__ video_frame_info_t ;
struct TYPE_20__ {scalar_t__ menu_rgui_background_filler_thickness_enable; scalar_t__ menu_rgui_border_filler_thickness_enable; scalar_t__ menu_rgui_border_filler_enable; scalar_t__ menu_rgui_shadows; scalar_t__ menu_rgui_extended_ascii; scalar_t__ menu_pointer_enable; scalar_t__ menu_mouse_enable; int /*<<< orphan*/  network_on_demand_thumbnails; } ;
struct TYPE_19__ {scalar_t__ menu_rgui_particle_effect; scalar_t__ menu_rgui_color_theme; scalar_t__ menu_rgui_aspect_ratio; scalar_t__ menu_rgui_aspect_ratio_lock; int menu_rgui_thumbnail_delay; } ;
struct TYPE_18__ {int /*<<< orphan*/  path_rgui_theme_preset; } ;
struct TYPE_22__ {TYPE_3__ bools; TYPE_2__ uints; TYPE_1__ paths; } ;
typedef  TYPE_5__ settings_t ;
struct TYPE_17__ {scalar_t__ type; scalar_t__ active; } ;
struct TYPE_23__ {scalar_t__ bg_thickness; int bg_modified; int force_redraw; scalar_t__ border_thickness; scalar_t__ border_enable; scalar_t__ shadow_enable; scalar_t__ particle_effect; scalar_t__ extended_ascii_enable; scalar_t__ color_theme; scalar_t__ menu_aspect_ratio; int ignore_resize_events; scalar_t__ menu_aspect_ratio_lock; scalar_t__ window_width; scalar_t__ window_height; int thumbnail_load_trigger_time; TYPE_15__ pointer; scalar_t__ show_fs_thumbnail; scalar_t__ thumbnail_load_pending; int /*<<< orphan*/  menu_video_settings; int /*<<< orphan*/  content_video_settings; int /*<<< orphan*/  theme_preset_path; } ;
typedef  TYPE_6__ rgui_t ;

/* Variables and functions */
 scalar_t__ MENU_POINTER_DISABLED ; 
 scalar_t__ RGUI_ASPECT_RATIO_LOCK_NONE ; 
 scalar_t__ RGUI_PARTICLE_EFFECT_NONE ; 
 scalar_t__ RGUI_THEME_CUSTOM ; 
 TYPE_5__* FUNC0 () ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_15__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(void *data, video_frame_info_t *video_info)
{
   rgui_t *rgui                   = (rgui_t*)data;
   settings_t *settings           = FUNC0();

   if (settings->bools.menu_rgui_background_filler_thickness_enable != rgui->bg_thickness)
   {
      rgui->bg_thickness = settings->bools.menu_rgui_background_filler_thickness_enable;
      rgui->bg_modified  = true;
      rgui->force_redraw = true;
   }

   if (settings->bools.menu_rgui_border_filler_thickness_enable != rgui->border_thickness)
   {
      rgui->border_thickness = settings->bools.menu_rgui_border_filler_thickness_enable;
      rgui->bg_modified      = true;
      rgui->force_redraw     = true;
   }

   if (settings->bools.menu_rgui_border_filler_enable != rgui->border_enable)
   {
      rgui->border_enable = settings->bools.menu_rgui_border_filler_enable;
      rgui->bg_modified   = true;
      rgui->force_redraw  = true;
   }

   if (settings->bools.menu_rgui_shadows != rgui->shadow_enable)
   {
      FUNC7(
            settings->bools.menu_rgui_shadows, settings->bools.menu_rgui_extended_ascii);

      rgui->shadow_enable = settings->bools.menu_rgui_shadows;
      rgui->bg_modified   = true;
      rgui->force_redraw  = true;
   }

   if (settings->uints.menu_rgui_particle_effect != rgui->particle_effect)
   {
      rgui->particle_effect = settings->uints.menu_rgui_particle_effect;

      if (rgui->particle_effect != RGUI_PARTICLE_EFFECT_NONE)
         FUNC4(rgui);

      rgui->force_redraw = true;
   }

   if (rgui->particle_effect != RGUI_PARTICLE_EFFECT_NONE)
      rgui->force_redraw = true;

   if (settings->bools.menu_rgui_extended_ascii != rgui->extended_ascii_enable)
   {
      FUNC7(
            settings->bools.menu_rgui_shadows, settings->bools.menu_rgui_extended_ascii);

      rgui->extended_ascii_enable = settings->bools.menu_rgui_extended_ascii;
      rgui->force_redraw          = true;
   }

   if (settings->uints.menu_rgui_color_theme != rgui->color_theme)
   {
      FUNC3(rgui, settings);
   }
   else if (settings->uints.menu_rgui_color_theme == RGUI_THEME_CUSTOM)
   {
      if (FUNC10(settings->paths.path_rgui_theme_preset, rgui->theme_preset_path, sizeof(rgui->theme_preset_path)))
      {
         FUNC3(rgui, settings);
      }
   }

   /* Note: both rgui_set_aspect_ratio() and rgui_set_video_config()
    * normally call command_event(CMD_EVENT_VIDEO_SET_ASPECT_RATIO, NULL)
    * ## THIS CANNOT BE DONE INSIDE rgui_frame() IF THREADED VIDEO IS ENABLED ##
    * Attempting to do so creates a deadlock, and causes RetroArch to hang.
    * We therefore have to set the 'delay_update' argument, which causes
    * command_event(CMD_EVENT_VIDEO_SET_ASPECT_RATIO, NULL) to be called at
    * the next instance of rgui_render() */

   /* > Check for changes in aspect ratio */
   if (settings->uints.menu_rgui_aspect_ratio != rgui->menu_aspect_ratio)
   {
      FUNC6(rgui, true);

      /* If user changes aspect ratio directly after opening
       * the video settings menu, then all bets are off - we
       * can no longer guarantee that changes to aspect ratio
       * and custom viewport settings will be preserved. So it
       * no longer makes sense to ignore resize events */
      rgui->ignore_resize_events = false;
   }

   /* > Check for changes in aspect ratio lock setting */
   if (settings->uints.menu_rgui_aspect_ratio_lock != rgui->menu_aspect_ratio_lock)
   {
      rgui->menu_aspect_ratio_lock = settings->uints.menu_rgui_aspect_ratio_lock;

      if (settings->uints.menu_rgui_aspect_ratio_lock == RGUI_ASPECT_RATIO_LOCK_NONE)
      {
         FUNC8(rgui, &rgui->content_video_settings, true);
      }
      else
      {
         FUNC9(rgui);
         FUNC8(rgui, &rgui->menu_video_settings, true);

         /* As with changes in aspect ratio, if we reach this point
          * after visiting the video settings menu, resize events
          * should be monitored again */
         rgui->ignore_resize_events = false;
      }
   }

   /* > If aspect ratio is locked, have to rescale if window
    *   dimensions change */
   if ((rgui->window_width  != video_info->width) ||
       (rgui->window_height != video_info->height))
   {
      if ((settings->uints.menu_rgui_aspect_ratio_lock != RGUI_ASPECT_RATIO_LOCK_NONE) &&
          !rgui->ignore_resize_events)
      {
         FUNC9(rgui);
         FUNC8(rgui, &rgui->menu_video_settings, true);
      }

      rgui->window_width  = video_info->width;
      rgui->window_height = video_info->height;
   }

   /* Handle pending thumbnail load operations */
   if (rgui->thumbnail_load_pending)
   {
      /* Check whether current 'load delay' duration has elapsed
       * Note: Delay is increased when viewing fullscreen thumbnails,
       * since the flicker when switching between playlist view and
       * fullscreen thumbnail view is incredibly jarring...) */
      if ((FUNC1() - rgui->thumbnail_load_trigger_time) >=
          (settings->uints.menu_rgui_thumbnail_delay * 1000 * (rgui->show_fs_thumbnail ? 1.5f : 1.0f)))
         FUNC5(rgui, settings->bools.network_on_demand_thumbnails);
   }

   /* Read pointer input */
   if (settings->bools.menu_mouse_enable || settings->bools.menu_pointer_enable)
   {
      FUNC2(&rgui->pointer);

      /* Screen must be redrawn whenever pointer is active */
      if ((rgui->pointer.type != MENU_POINTER_DISABLED) && rgui->pointer.active)
         rgui->force_redraw = true;
   }
   else
      rgui->pointer.type = MENU_POINTER_DISABLED;
}