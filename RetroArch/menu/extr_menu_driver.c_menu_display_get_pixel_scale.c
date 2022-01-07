
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float menu_scale_factor; } ;
struct TYPE_5__ {TYPE_1__ floats; } ;
typedef TYPE_2__ settings_t ;


 int DIAGONAL_PIXELS_1080P ;
 TYPE_2__* config_get_ptr () ;
 int sqrt (double) ;

float menu_display_get_pixel_scale(unsigned width, unsigned height)
{
   static unsigned last_width = 0;
   static unsigned last_height = 0;
   static float scale = 0.0f;
   static bool scale_cached = 0;
   settings_t *settings = config_get_ptr();







   if (!scale_cached ||
       (width != last_width) ||
       (height != last_height))
   {

      scale = (float)(
            sqrt((double)((width * width) + (height * height))) /
            DIAGONAL_PIXELS_1080P);

      scale_cached = 1;
      last_width = width;
      last_height = height;
   }


   if (settings)
      return scale * ((settings->floats.menu_scale_factor > 0.0001f) ?
            settings->floats.menu_scale_factor : 1.0f);

   return scale;
}
