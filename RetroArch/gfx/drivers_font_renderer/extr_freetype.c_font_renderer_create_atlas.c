
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


typedef int uint8_t ;
struct TYPE_11__ {unsigned int width; unsigned int height; int * buffer; } ;
struct TYPE_13__ {TYPE_6__* atlas_slots; TYPE_3__ atlas; TYPE_2__* face; } ;
typedef TYPE_5__ ft_font_renderer_t ;
struct TYPE_12__ {unsigned int atlas_offset_x; unsigned int atlas_offset_y; } ;
struct TYPE_14__ {TYPE_4__ glyph; } ;
typedef TYPE_6__ freetype_atlas_slot_t ;
struct TYPE_9__ {float xMax; float xMin; float yMax; float yMin; } ;
struct TYPE_10__ {float units_per_EM; TYPE_1__ bbox; } ;


 unsigned int FT_ATLAS_COLS ;
 unsigned int FT_ATLAS_ROWS ;
 scalar_t__ calloc (unsigned int,int) ;
 int font_renderer_ft_get_glyph (TYPE_5__*,unsigned int) ;
 scalar_t__ isalnum (unsigned int) ;
 unsigned int round (float) ;

__attribute__((used)) static bool font_renderer_create_atlas(ft_font_renderer_t *handle, float font_size)
{
   unsigned i, x, y;
   freetype_atlas_slot_t* slot = ((void*)0);

   unsigned max_width = round((handle->face->bbox.xMax - handle->face->bbox.xMin) * font_size / handle->face->units_per_EM);
   unsigned max_height = round((handle->face->bbox.yMax - handle->face->bbox.yMin) * font_size / handle->face->units_per_EM);

   unsigned atlas_width = max_width * FT_ATLAS_COLS;

   unsigned atlas_height = max_height * FT_ATLAS_ROWS;

   uint8_t *atlas_buffer = (uint8_t*)
      calloc(atlas_width * atlas_height, 1);

   if (!atlas_buffer)
      return 0;

   handle->atlas.buffer = atlas_buffer;
   handle->atlas.width = atlas_width;
   handle->atlas.height = atlas_height;
   slot = handle->atlas_slots;

   for (y = 0; y < FT_ATLAS_ROWS; y++)
   {
      for (x = 0; x < FT_ATLAS_COLS; x++)
      {
         slot->glyph.atlas_offset_x = x * max_width;
         slot->glyph.atlas_offset_y = y * max_height;
         slot++;
      }
   }

   for (i = 0; i < 256; i++)
      font_renderer_ft_get_glyph(handle, i);

   for (i = 0; i < 256; i++)
      if (isalnum(i))
         font_renderer_ft_get_glyph(handle, i);

   return 1;
}
