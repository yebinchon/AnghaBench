
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int menu_driver; } ;
struct TYPE_5__ {float menu_ticker_speed; } ;
struct TYPE_7__ {TYPE_2__ arrays; TYPE_1__ floats; } ;
typedef TYPE_3__ settings_t ;
typedef scalar_t__ retro_time_t ;


 scalar_t__ TICKER_SLOW_SPEED ;
 scalar_t__ TICKER_SPEED ;
 int animation_is_active ;
 TYPE_3__* config_get_ptr () ;
 scalar_t__ cpu_features_get_time_usec () ;
 scalar_t__ cur_time ;
 float delta_time ;
 float menu_display_get_dpi_scale (unsigned int,unsigned int) ;
 scalar_t__ old_time ;
 scalar_t__ string_is_equal (int ,char*) ;
 int ticker_idx ;
 scalar_t__ ticker_is_active ;
 unsigned int ticker_pixel_idx ;
 float ticker_pixel_period ;
 int ticker_slow_idx ;

__attribute__((used)) static void menu_animation_update_time(bool timedate_enable, unsigned video_width, unsigned video_height)
{
   static retro_time_t
      last_clock_update = 0;
   static retro_time_t
      last_ticker_update = 0;
   static retro_time_t
      last_ticker_slow_update = 0;

   static float ticker_pixel_accumulator = 0.0f;
   unsigned ticker_pixel_accumulator_uint = 0;
   float ticker_pixel_increment = 0.0f;


   settings_t *settings = config_get_ptr();
   float speed_factor = settings->floats.menu_ticker_speed > 0.0001f ? settings->floats.menu_ticker_speed : 1.0f;
   unsigned ticker_speed = (unsigned)(((float)TICKER_SPEED / speed_factor) + 0.5);
   unsigned ticker_slow_speed = (unsigned)(((float)TICKER_SLOW_SPEED / speed_factor) + 0.5);


   cur_time = cpu_features_get_time_usec();
   delta_time = old_time == 0 ? 0.0f : (float)(cur_time - old_time) / 1000.0f;
   old_time = cur_time;

   if (((cur_time - last_clock_update) > 1000000)
         && timedate_enable)
   {
      animation_is_active = 1;
      last_clock_update = cur_time;
   }

   if (ticker_is_active)
   {
      if (cur_time - last_ticker_update >= ticker_speed)
      {
         ticker_idx++;
         last_ticker_update = cur_time;
      }

      if (cur_time - last_ticker_slow_update >= ticker_slow_speed)
      {
         ticker_slow_idx++;
         last_ticker_slow_update = cur_time;
      }





      ticker_pixel_increment = delta_time / ticker_pixel_period;


      ticker_pixel_increment *= speed_factor;
      if (string_is_equal(settings->arrays.menu_driver, "rgui"))
         ticker_pixel_increment *= 0.25f;


      else if (string_is_equal(settings->arrays.menu_driver, "ozone"))
         ticker_pixel_increment *= 0.5f;
      else if (string_is_equal(settings->arrays.menu_driver, "glui"))
         ticker_pixel_increment *= (menu_display_get_dpi_scale(video_width, video_height) * 0.8f);
      else if (video_width > 0)
         ticker_pixel_increment *= ((float)video_width / 1920.0f);


      ticker_pixel_accumulator += ticker_pixel_increment;
      ticker_pixel_accumulator_uint = (unsigned)ticker_pixel_accumulator;


      if (ticker_pixel_accumulator_uint > 0)
      {
         ticker_pixel_idx += ticker_pixel_accumulator_uint;
         ticker_pixel_accumulator -= (float)ticker_pixel_accumulator_uint;
      }
   }
}
