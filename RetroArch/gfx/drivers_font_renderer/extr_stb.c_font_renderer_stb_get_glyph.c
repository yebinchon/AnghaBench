
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct font_glyph {int dummy; } ;
struct TYPE_2__ {struct font_glyph const* glyphs; } ;
typedef TYPE_1__ stb_font_renderer_t ;



__attribute__((used)) static const struct font_glyph *font_renderer_stb_get_glyph(
      void *data, uint32_t code)
{
   stb_font_renderer_t *self = (stb_font_renderer_t*)data;
   return code < 256 ? &self->glyphs[code] : ((void*)0);
}
