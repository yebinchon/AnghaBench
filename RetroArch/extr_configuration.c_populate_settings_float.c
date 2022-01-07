
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct config_float_setting {int dummy; } ;
struct TYPE_4__ {int video_msg_bgcolor_opacity; int input_analog_sensitivity; int input_analog_deadzone; int slowmotion_ratio; int fastforward_ratio; int video_font_size; int video_msg_pos_y; int video_msg_pos_x; int menu_rgui_particle_effect_speed; int menu_ticker_speed; int menu_header_opacity; int menu_footer_opacity; int menu_framebuffer_opacity; int menu_wallpaper_opacity; int menu_scale_factor; int input_overlay_scale; int input_overlay_opacity; int audio_mixer_volume; int audio_volume; int audio_max_timing_skew; int video_refresh_rate; int crt_video_refresh_rate; int video_scale; int video_aspect_ratio; } ;
struct TYPE_5__ {TYPE_1__ floats; } ;
typedef TYPE_2__ settings_t ;


 int AUDIO_ACTION_RATE_CONTROL_DELTA ;
 float DEFAULT_ASPECT_RATIO ;
 float DEFAULT_AUDIO_MIXER_VOLUME ;
 float DEFAULT_AUDIO_VOLUME ;
 float DEFAULT_CRT_REFRESH_RATE ;
 float DEFAULT_FASTFORWARD_RATIO ;
 float DEFAULT_FONT_SIZE ;
 float DEFAULT_INPUT_OVERLAY_OPACITY ;
 float DEFAULT_MAX_TIMING_SKEW ;
 float DEFAULT_MENU_SCALE_FACTOR ;
 float DEFAULT_RATE_CONTROL_DELTA ;
 float DEFAULT_REFRESH_RATE ;
 float DEFAULT_RGUI_PARTICLE_EFFECT_SPEED ;
 float DEFAULT_SLOWMOTION_RATIO ;
 int INPUT_ACTION_AXIS_THRESHOLD ;
 int SETTING_FLOAT (char*,int *,int,float,int) ;
 float analog_deadzone ;
 float analog_sensitivity ;
 int * audio_get_float_ptr (int ) ;
 float axis_threshold ;
 scalar_t__ calloc (int,int) ;
 int * input_driver_get_float (int ) ;
 float menu_footer_opacity ;
 float menu_framebuffer_opacity ;
 float menu_header_opacity ;
 float menu_ticker_speed ;
 float menu_wallpaper_opacity ;
 float message_bgcolor_opacity ;
 float message_pos_offset_x ;
 float message_pos_offset_y ;

__attribute__((used)) static struct config_float_setting *populate_settings_float(settings_t *settings, int *size)
{
   unsigned count = 0;
   struct config_float_setting *tmp = (struct config_float_setting*)calloc(1, (*size + 1) * sizeof(struct config_float_setting));

   if (!tmp)
      return ((void*)0);

   SETTING_FLOAT("video_aspect_ratio", &settings->floats.video_aspect_ratio, 1, DEFAULT_ASPECT_RATIO, 0);
   SETTING_FLOAT("video_scale", &settings->floats.video_scale, 0, 0.0f, 0);
   SETTING_FLOAT("crt_video_refresh_rate", &settings->floats.crt_video_refresh_rate, 1, DEFAULT_CRT_REFRESH_RATE, 0);
   SETTING_FLOAT("video_refresh_rate", &settings->floats.video_refresh_rate, 1, DEFAULT_REFRESH_RATE, 0);
   SETTING_FLOAT("audio_rate_control_delta", audio_get_float_ptr(AUDIO_ACTION_RATE_CONTROL_DELTA), 1, DEFAULT_RATE_CONTROL_DELTA, 0);
   SETTING_FLOAT("audio_max_timing_skew", &settings->floats.audio_max_timing_skew, 1, DEFAULT_MAX_TIMING_SKEW, 0);
   SETTING_FLOAT("audio_volume", &settings->floats.audio_volume, 1, DEFAULT_AUDIO_VOLUME, 0);
   SETTING_FLOAT("video_message_pos_x", &settings->floats.video_msg_pos_x, 1, message_pos_offset_x, 0);
   SETTING_FLOAT("video_message_pos_y", &settings->floats.video_msg_pos_y, 1, message_pos_offset_y, 0);
   SETTING_FLOAT("video_font_size", &settings->floats.video_font_size, 1, DEFAULT_FONT_SIZE, 0);
   SETTING_FLOAT("fastforward_ratio", &settings->floats.fastforward_ratio, 1, DEFAULT_FASTFORWARD_RATIO, 0);
   SETTING_FLOAT("slowmotion_ratio", &settings->floats.slowmotion_ratio, 1, DEFAULT_SLOWMOTION_RATIO, 0);
   SETTING_FLOAT("input_axis_threshold", input_driver_get_float(INPUT_ACTION_AXIS_THRESHOLD), 1, axis_threshold, 0);
   SETTING_FLOAT("input_analog_deadzone", &settings->floats.input_analog_deadzone, 1, analog_deadzone, 0);
   SETTING_FLOAT("input_analog_sensitivity", &settings->floats.input_analog_sensitivity, 1, analog_sensitivity, 0);
   SETTING_FLOAT("video_msg_bgcolor_opacity", &settings->floats.video_msg_bgcolor_opacity, 1, message_bgcolor_opacity, 0);

   *size = count;

   return tmp;
}
