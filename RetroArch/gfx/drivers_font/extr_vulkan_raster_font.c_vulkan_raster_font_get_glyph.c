
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* font_driver; } ;
typedef TYPE_2__ vulkan_raster_t ;
typedef int uint32_t ;
struct font_glyph {int dummy; } ;
struct TYPE_4__ {struct font_glyph* (* get_glyph ) (void*,int ) ;int ident; } ;


 struct font_glyph* stub1 (void*,int ) ;
 int vulkan_raster_font_update_glyph (TYPE_2__*,struct font_glyph const*) ;

__attribute__((used)) static const struct font_glyph *vulkan_raster_font_get_glyph(
      void *data, uint32_t code)
{
   const struct font_glyph* glyph;
   vulkan_raster_t *font = (vulkan_raster_t*)data;

   if (!font || !font->font_driver)
      return ((void*)0);
   if (!font->font_driver->ident)
       return ((void*)0);

   glyph = font->font_driver->get_glyph((void*)font->font_driver, code);

   if(glyph)
      vulkan_raster_font_update_glyph(font, glyph);

   return glyph;
}
