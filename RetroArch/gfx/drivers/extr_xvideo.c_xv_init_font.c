
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int font_v; int font_u; int font_y; int font; int font_driver; } ;
typedef TYPE_4__ xv_t ;
struct TYPE_10__ {int video_msg_color_r; int video_msg_color_g; int video_msg_color_b; int video_font_size; } ;
struct TYPE_9__ {scalar_t__* path_font; } ;
struct TYPE_8__ {int video_font_enable; } ;
struct TYPE_12__ {TYPE_3__ floats; TYPE_2__ paths; TYPE_1__ bools; } ;
typedef TYPE_5__ settings_t ;


 int RARCH_LOG (char*) ;
 TYPE_5__* config_get_ptr () ;
 scalar_t__ font_renderer_create_default (int *,int *,scalar_t__*,int ) ;
 int xv_calculate_yuv (int *,int *,int *,int,int,int) ;

__attribute__((used)) static void xv_init_font(xv_t *xv, const char *font_path, unsigned font_size)
{
   settings_t *settings = config_get_ptr();

   if (!settings->bools.video_font_enable)
      return;

   if (font_renderer_create_default(
            &xv->font_driver,
            &xv->font, *settings->paths.path_font
            ? settings->paths.path_font : ((void*)0),
            settings->floats.video_font_size))
   {
      int r, g, b;
      r = settings->floats.video_msg_color_r * 255;
      r = (r < 0 ? 0 : (r > 255 ? 255 : r));
      g = settings->floats.video_msg_color_g * 255;
      g = (g < 0 ? 0 : (g > 255 ? 255 : g));
      b = settings->floats.video_msg_color_b * 255;
      b = (b < 0 ? 0 : (b > 255 ? 255 : b));

      xv_calculate_yuv(&xv->font_y, &xv->font_u, &xv->font_v,
            r, g, b);
   }
   else
      RARCH_LOG("[XVideo]: Could not initialize fonts.\n");
}
