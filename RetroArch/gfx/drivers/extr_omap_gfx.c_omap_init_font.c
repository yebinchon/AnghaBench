
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int video_msg_color_r; int video_msg_color_g; int video_msg_color_b; } ;
struct TYPE_11__ {int font_size; } ;
struct TYPE_10__ {scalar_t__* path_font; } ;
struct TYPE_9__ {int video_font_enable; } ;
struct TYPE_13__ {TYPE_4__ floats; TYPE_3__ video; TYPE_2__ paths; TYPE_1__ bools; } ;
typedef TYPE_5__ settings_t ;
struct TYPE_14__ {int* font_rgb; int font; int font_driver; } ;
typedef TYPE_6__ omap_video_t ;


 int RARCH_LOG (char*) ;
 TYPE_5__* config_get_ptr () ;
 int font_renderer_create_default (int *,int *,scalar_t__*,int ) ;

__attribute__((used)) static void omap_init_font(omap_video_t *vid, const char *font_path, unsigned font_size)
{
   int r, g, b;
   settings_t *settings = config_get_ptr();

   if (!settings->bools.video_font_enable)
      return;

   if (!(font_renderer_create_default(&vid->font_driver, &vid->font,
               *settings->paths.path_font ? settings->paths.path_font : ((void*)0), settings->video.font_size)))
   {
      RARCH_LOG("[video_omap]: font init failed\n");
      return;
   }

   r = settings->floats.video_msg_color_r * 255;
   g = settings->floats.video_msg_color_g * 255;
   b = settings->floats.video_msg_color_b * 255;

   r = (r < 0) ? 0 : (r > 255 ? 255 : r);
   g = (g < 0) ? 0 : (g > 255 ? 255 : g);
   b = (b < 0) ? 0 : (b > 255 ? 255 : b);

   vid->font_rgb[0] = r;
   vid->font_rgb[1] = g;
   vid->font_rgb[2] = b;
}
