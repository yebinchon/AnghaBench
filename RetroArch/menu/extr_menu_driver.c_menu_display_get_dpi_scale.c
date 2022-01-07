
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {float menu_scale_factor; } ;
struct TYPE_7__ {TYPE_1__ floats; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_8__ {float* value; int type; } ;
typedef TYPE_3__ gfx_ctx_metrics_t ;


 float DIAGONAL_PIXELS_1080P ;
 int DISPLAY_METRIC_DPI ;
 float REFERENCE_DPI ;
 TYPE_2__* config_get_ptr () ;
 scalar_t__ sqrt (double) ;
 scalar_t__ video_context_driver_get_metrics (TYPE_3__*) ;

float menu_display_get_dpi_scale(unsigned width, unsigned height)
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
      float diagonal_pixels;
      float pixel_scale;
      float dpi;
      gfx_ctx_metrics_t metrics;



      diagonal_pixels = (float)sqrt(
            (double)((width * width) + (height * height)));
      pixel_scale = diagonal_pixels / DIAGONAL_PIXELS_1080P;


      metrics.type = DISPLAY_METRIC_DPI;
      metrics.value = &dpi;

      if (video_context_driver_get_metrics(&metrics) && (dpi > 0.0f))
      {
         float display_size;
         float dpi_scale;
         display_size = diagonal_pixels / dpi;
         dpi_scale = dpi / REFERENCE_DPI;
         if (display_size > 24.0f)
         {
            float fraction = (display_size > 32.0f) ? 32.0f : display_size;
            fraction = fraction - 24.0f;
            fraction = fraction / (32.0f - 24.0f);

            scale = ((1.0f - fraction) * dpi_scale) + (fraction * pixel_scale);
         }
         else if (display_size < 12.0f)
         {
            float fraction = display_size / 12.0f;

            scale = ((1.0f - fraction) * pixel_scale) + (fraction * dpi_scale);
         }
         else
            scale = dpi_scale;
      }


      else
         scale = pixel_scale;

      scale_cached = 1;
      last_width = width;
      last_height = height;
   }


   if (settings)
      return scale * ((settings->floats.menu_scale_factor > 0.0001f) ?
            settings->floats.menu_scale_factor : 1.0f);

   return scale;
}
