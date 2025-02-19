
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int font_data; TYPE_1__* font_driver; } ;
typedef TYPE_2__ vulkan_raster_t ;
typedef char uint8_t ;
struct font_glyph {scalar_t__ advance_x; } ;
struct TYPE_4__ {struct font_glyph* (* get_glyph ) (int ,char) ;} ;


 struct font_glyph* stub1 (int ,char) ;
 struct font_glyph* stub2 (int ,char) ;
 int vulkan_raster_font_update_glyph (TYPE_2__*,struct font_glyph const*) ;

__attribute__((used)) static int vulkan_get_message_width(void *data, const char *msg,
      unsigned msg_len, float scale)
{
   vulkan_raster_t *font = (vulkan_raster_t*)data;

   unsigned i;
   int delta_x = 0;

   if (!font)
      return 0;

   for (i = 0; i < msg_len; i++)
   {
      const struct font_glyph *glyph =
         font->font_driver->get_glyph(font->font_data, (uint8_t)msg[i]);
      if (!glyph)
         glyph = font->font_driver->get_glyph(font->font_data, '?');

      if (glyph)
      {
         vulkan_raster_font_update_glyph(font, glyph);
         delta_x += glyph->advance_x;
      }
   }

   return delta_x * scale;
}
