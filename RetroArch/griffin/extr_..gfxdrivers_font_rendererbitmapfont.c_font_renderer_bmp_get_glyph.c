
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct font_glyph {int dummy; } ;
struct TYPE_2__ {struct font_glyph const* glyphs; } ;
typedef TYPE_1__ bm_renderer_t ;


 size_t BMP_ATLAS_SIZE ;

__attribute__((used)) static const struct font_glyph *font_renderer_bmp_get_glyph(
      void *data, uint32_t code)
{
   bm_renderer_t *handle = (bm_renderer_t*)data;
   if (!handle)
      return ((void*)0);
   return code < BMP_ATLAS_SIZE ? &handle->glyphs[code] : ((void*)0);
}
