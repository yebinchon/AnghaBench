
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* vk; int font_data; TYPE_1__* font_driver; } ;
typedef TYPE_4__ vulkan_raster_t ;
struct TYPE_8__ {float height; } ;
struct TYPE_9__ {TYPE_2__ vp; } ;
struct TYPE_7__ {scalar_t__ (* get_line_height ) (int ) ;} ;


 char* strchr (char const*,char) ;
 unsigned int strlen (char const*) ;
 scalar_t__ stub1 (int ) ;
 int vulkan_raster_font_render_line (TYPE_4__*,char const*,unsigned int,float,float const*,float,float,unsigned int) ;

__attribute__((used)) static void vulkan_raster_font_render_message(
      vulkan_raster_t *font, const char *msg, float scale,
      const float color[4], float pos_x, float pos_y,
      unsigned text_align)
{
   int lines = 0;
   float line_height;

   if (!msg || !*msg || !font->vk)
      return;


   if (!font->font_driver->get_line_height)
   {
      if (font->vk)
         vulkan_raster_font_render_line(font, msg, strlen(msg),
               scale, color, pos_x, pos_y, text_align);
      return;
   }

   line_height = (float) font->font_driver->get_line_height(font->font_data) *
                     scale / font->vk->vp.height;

   for (;;)
   {
      const char *delim = strchr(msg, '\n');


      if (delim)
      {
         unsigned msg_len = delim - msg;
         if (font->vk)
            vulkan_raster_font_render_line(font, msg, msg_len,
                  scale, color, pos_x, pos_y - (float)lines * line_height,
                  text_align);
         msg += msg_len + 1;
         lines++;
      }
      else
      {
         unsigned msg_len = strlen(msg);
         if (font->vk)
            vulkan_raster_font_render_line(font, msg, msg_len,
                  scale, color, pos_x, pos_y - (float)lines * line_height,
                  text_align);
         break;
      }
   }
}
