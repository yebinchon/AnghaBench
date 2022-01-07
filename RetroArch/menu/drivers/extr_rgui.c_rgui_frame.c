
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_15__ ;


struct TYPE_21__ {scalar_t__ width; scalar_t__ height; } ;
typedef TYPE_4__ video_frame_info_t ;
struct TYPE_20__ {scalar_t__ menu_rgui_background_filler_thickness_enable; scalar_t__ menu_rgui_border_filler_thickness_enable; scalar_t__ menu_rgui_border_filler_enable; scalar_t__ menu_rgui_shadows; scalar_t__ menu_rgui_extended_ascii; scalar_t__ menu_pointer_enable; scalar_t__ menu_mouse_enable; int network_on_demand_thumbnails; } ;
struct TYPE_19__ {scalar_t__ menu_rgui_particle_effect; scalar_t__ menu_rgui_color_theme; scalar_t__ menu_rgui_aspect_ratio; scalar_t__ menu_rgui_aspect_ratio_lock; int menu_rgui_thumbnail_delay; } ;
struct TYPE_18__ {int path_rgui_theme_preset; } ;
struct TYPE_22__ {TYPE_3__ bools; TYPE_2__ uints; TYPE_1__ paths; } ;
typedef TYPE_5__ settings_t ;
struct TYPE_17__ {scalar_t__ type; scalar_t__ active; } ;
struct TYPE_23__ {scalar_t__ bg_thickness; int bg_modified; int force_redraw; scalar_t__ border_thickness; scalar_t__ border_enable; scalar_t__ shadow_enable; scalar_t__ particle_effect; scalar_t__ extended_ascii_enable; scalar_t__ color_theme; scalar_t__ menu_aspect_ratio; int ignore_resize_events; scalar_t__ menu_aspect_ratio_lock; scalar_t__ window_width; scalar_t__ window_height; int thumbnail_load_trigger_time; TYPE_15__ pointer; scalar_t__ show_fs_thumbnail; scalar_t__ thumbnail_load_pending; int menu_video_settings; int content_video_settings; int theme_preset_path; } ;
typedef TYPE_6__ rgui_t ;


 scalar_t__ MENU_POINTER_DISABLED ;
 scalar_t__ RGUI_ASPECT_RATIO_LOCK_NONE ;
 scalar_t__ RGUI_PARTICLE_EFFECT_NONE ;
 scalar_t__ RGUI_THEME_CUSTOM ;
 TYPE_5__* config_get_ptr () ;
 int cpu_features_get_time_usec () ;
 int menu_input_get_pointer_state (TYPE_15__*) ;
 int prepare_rgui_colors (TYPE_6__*,TYPE_5__*) ;
 int rgui_init_particle_effect (TYPE_6__*) ;
 int rgui_load_current_thumbnails (TYPE_6__*,int ) ;
 int rgui_set_aspect_ratio (TYPE_6__*,int) ;
 int rgui_set_blit_functions (scalar_t__,scalar_t__) ;
 int rgui_set_video_config (TYPE_6__*,int *,int) ;
 int rgui_update_menu_viewport (TYPE_6__*) ;
 scalar_t__ string_is_not_equal_fast (int ,int ,int) ;

__attribute__((used)) static void rgui_frame(void *data, video_frame_info_t *video_info)
{
   rgui_t *rgui = (rgui_t*)data;
   settings_t *settings = config_get_ptr();

   if (settings->bools.menu_rgui_background_filler_thickness_enable != rgui->bg_thickness)
   {
      rgui->bg_thickness = settings->bools.menu_rgui_background_filler_thickness_enable;
      rgui->bg_modified = 1;
      rgui->force_redraw = 1;
   }

   if (settings->bools.menu_rgui_border_filler_thickness_enable != rgui->border_thickness)
   {
      rgui->border_thickness = settings->bools.menu_rgui_border_filler_thickness_enable;
      rgui->bg_modified = 1;
      rgui->force_redraw = 1;
   }

   if (settings->bools.menu_rgui_border_filler_enable != rgui->border_enable)
   {
      rgui->border_enable = settings->bools.menu_rgui_border_filler_enable;
      rgui->bg_modified = 1;
      rgui->force_redraw = 1;
   }

   if (settings->bools.menu_rgui_shadows != rgui->shadow_enable)
   {
      rgui_set_blit_functions(
            settings->bools.menu_rgui_shadows, settings->bools.menu_rgui_extended_ascii);

      rgui->shadow_enable = settings->bools.menu_rgui_shadows;
      rgui->bg_modified = 1;
      rgui->force_redraw = 1;
   }

   if (settings->uints.menu_rgui_particle_effect != rgui->particle_effect)
   {
      rgui->particle_effect = settings->uints.menu_rgui_particle_effect;

      if (rgui->particle_effect != RGUI_PARTICLE_EFFECT_NONE)
         rgui_init_particle_effect(rgui);

      rgui->force_redraw = 1;
   }

   if (rgui->particle_effect != RGUI_PARTICLE_EFFECT_NONE)
      rgui->force_redraw = 1;

   if (settings->bools.menu_rgui_extended_ascii != rgui->extended_ascii_enable)
   {
      rgui_set_blit_functions(
            settings->bools.menu_rgui_shadows, settings->bools.menu_rgui_extended_ascii);

      rgui->extended_ascii_enable = settings->bools.menu_rgui_extended_ascii;
      rgui->force_redraw = 1;
   }

   if (settings->uints.menu_rgui_color_theme != rgui->color_theme)
   {
      prepare_rgui_colors(rgui, settings);
   }
   else if (settings->uints.menu_rgui_color_theme == RGUI_THEME_CUSTOM)
   {
      if (string_is_not_equal_fast(settings->paths.path_rgui_theme_preset, rgui->theme_preset_path, sizeof(rgui->theme_preset_path)))
      {
         prepare_rgui_colors(rgui, settings);
      }
   }
   if (settings->uints.menu_rgui_aspect_ratio != rgui->menu_aspect_ratio)
   {
      rgui_set_aspect_ratio(rgui, 1);






      rgui->ignore_resize_events = 0;
   }


   if (settings->uints.menu_rgui_aspect_ratio_lock != rgui->menu_aspect_ratio_lock)
   {
      rgui->menu_aspect_ratio_lock = settings->uints.menu_rgui_aspect_ratio_lock;

      if (settings->uints.menu_rgui_aspect_ratio_lock == RGUI_ASPECT_RATIO_LOCK_NONE)
      {
         rgui_set_video_config(rgui, &rgui->content_video_settings, 1);
      }
      else
      {
         rgui_update_menu_viewport(rgui);
         rgui_set_video_config(rgui, &rgui->menu_video_settings, 1);




         rgui->ignore_resize_events = 0;
      }
   }



   if ((rgui->window_width != video_info->width) ||
       (rgui->window_height != video_info->height))
   {
      if ((settings->uints.menu_rgui_aspect_ratio_lock != RGUI_ASPECT_RATIO_LOCK_NONE) &&
          !rgui->ignore_resize_events)
      {
         rgui_update_menu_viewport(rgui);
         rgui_set_video_config(rgui, &rgui->menu_video_settings, 1);
      }

      rgui->window_width = video_info->width;
      rgui->window_height = video_info->height;
   }


   if (rgui->thumbnail_load_pending)
   {




      if ((cpu_features_get_time_usec() - rgui->thumbnail_load_trigger_time) >=
          (settings->uints.menu_rgui_thumbnail_delay * 1000 * (rgui->show_fs_thumbnail ? 1.5f : 1.0f)))
         rgui_load_current_thumbnails(rgui, settings->bools.network_on_demand_thumbnails);
   }


   if (settings->bools.menu_mouse_enable || settings->bools.menu_pointer_enable)
   {
      menu_input_get_pointer_state(&rgui->pointer);


      if ((rgui->pointer.type != MENU_POINTER_DISABLED) && rgui->pointer.active)
         rgui->force_redraw = 1;
   }
   else
      rgui->pointer.type = MENU_POINTER_DISABLED;
}
