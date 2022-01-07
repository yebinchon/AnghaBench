
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* font_driver; } ;
typedef TYPE_2__ wiiu_font_t ;
typedef int uint32_t ;
struct font_glyph {int dummy; } ;
struct TYPE_3__ {struct font_glyph const* (* get_glyph ) (void*,int ) ;int ident; } ;


 struct font_glyph const* stub1 (void*,int ) ;

__attribute__((used)) static const struct font_glyph* wiiu_font_get_glyph(
   void* data, uint32_t code)
{
   wiiu_font_t* font = (wiiu_font_t*)data;

   if (!font || !font->font_driver)
      return ((void*)0);

   if (!font->font_driver->ident)
      return ((void*)0);

   return font->font_driver->get_glyph((void*)font->font_driver, code);
}
