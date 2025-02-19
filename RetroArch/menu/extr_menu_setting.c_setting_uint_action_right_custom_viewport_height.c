
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int height; scalar_t__ width; } ;
typedef TYPE_2__ video_viewport_t ;
struct retro_system_av_info {int geometry; } ;
struct retro_game_geometry {scalar_t__ base_height; scalar_t__ base_width; } ;
struct TYPE_8__ {scalar_t__ video_scale_integer; } ;
struct TYPE_10__ {TYPE_1__ bools; } ;
typedef TYPE_3__ settings_t ;
typedef int rarch_setting_t ;
struct TYPE_11__ {float value; } ;


 size_t ASPECT_RATIO_CUSTOM ;
 TYPE_7__* aspectratio_lut ;
 TYPE_3__* config_get_ptr () ;
 int retroarch_get_rotation () ;
 int video_driver_get_viewport_info (TYPE_2__*) ;
 TYPE_2__* video_viewport_get_custom () ;
 struct retro_system_av_info* video_viewport_get_system_av_info () ;

__attribute__((used)) static int setting_uint_action_right_custom_viewport_height(
      rarch_setting_t *setting, bool wraparound)
{
   video_viewport_t vp;
   struct retro_system_av_info *av_info = video_viewport_get_system_av_info();
   video_viewport_t *custom = video_viewport_get_custom();
   settings_t *settings = config_get_ptr();
   struct retro_game_geometry *geom = (struct retro_game_geometry*)
      &av_info->geometry;

   if (!settings || !av_info)
      return -1;

   video_driver_get_viewport_info(&vp);

   if (settings->bools.video_scale_integer)
   {
      if (retroarch_get_rotation() % 2)
         custom->height += geom->base_width;
      else
         custom->height += geom->base_height;
   }
   else
      custom->height += 1;

   aspectratio_lut[ASPECT_RATIO_CUSTOM].value =
      (float)custom->width / custom->height;

   return 0;
}
