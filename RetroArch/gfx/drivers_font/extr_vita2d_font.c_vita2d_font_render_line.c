
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int texture; TYPE_2__* atlas; int font_data; TYPE_1__* font_driver; } ;
typedef TYPE_3__ vita_font_t ;
struct TYPE_11__ {unsigned int width; unsigned int height; } ;
typedef TYPE_4__ video_frame_info_t ;
typedef int uint8_t ;
struct font_glyph {int draw_offset_x; int draw_offset_y; int atlas_offset_x; int atlas_offset_y; int width; int height; scalar_t__ advance_y; scalar_t__ advance_x; } ;
struct TYPE_9__ {int dirty; unsigned int width; unsigned int height; int * buffer; } ;
struct TYPE_8__ {struct font_glyph* (* get_glyph ) (int ,char) ;} ;




 int roundf (float) ;
 struct font_glyph* stub1 (int ,unsigned int) ;
 struct font_glyph* stub2 (int ,char) ;
 unsigned int utf8_walk (char const**) ;
 int vita2d_draw_texture_tint_part_scale (int ,int,int,int,int,int,int,float,float,unsigned int const) ;
 int vita2d_font_get_message_width (TYPE_3__*,char const*,unsigned int,float) ;
 int * vita2d_texture_get_datap (int ) ;
 unsigned int vita2d_texture_get_stride (int ) ;

__attribute__((used)) static void vita2d_font_render_line(
      video_frame_info_t *video_info,
      vita_font_t *font, const char *msg, unsigned msg_len,
      float scale, const unsigned int color, float pos_x,
      float pos_y, unsigned text_align)
{
   unsigned i;
   unsigned width = video_info->width;
   unsigned height = video_info->height;
   int x = roundf(pos_x * width);
   int y = roundf((1.0f - pos_y) * height);
   int delta_x = 0;
   int delta_y = 0;

   switch (text_align)
   {
      case 128:
         x -= vita2d_font_get_message_width(font, msg, msg_len, scale);
         break;
      case 129:
         x -= vita2d_font_get_message_width(font, msg, msg_len, scale) / 2;
         break;
   }

   for (i = 0; i < msg_len; i++)
   {
      int off_x, off_y, tex_x, tex_y, width, height;
      unsigned int stride, pitch, j, k;
      const struct font_glyph *glyph = ((void*)0);
      const uint8_t *frame32 = ((void*)0);
      uint8_t *tex32 = ((void*)0);
      const char *msg_tmp = &msg[i];
      unsigned code = utf8_walk(&msg_tmp);
      unsigned skip = msg_tmp - &msg[i];

      if (skip > 1)
         i += skip - 1;

      glyph = font->font_driver->get_glyph(font->font_data, code);

      if (!glyph)
         glyph = font->font_driver->get_glyph(font->font_data, '?');

      if (!glyph)
         continue;

      off_x = glyph->draw_offset_x;
      off_y = glyph->draw_offset_y;
      tex_x = glyph->atlas_offset_x;
      tex_y = glyph->atlas_offset_y;
      width = glyph->width;
      height = glyph->height;

      if (font->atlas->dirty)
      {
        stride = vita2d_texture_get_stride(font->texture);
        tex32 = vita2d_texture_get_datap(font->texture);
        frame32 = font->atlas->buffer;
        pitch = font->atlas->width;

        for (j = 0; j < font->atlas->height; j++)
           for (k = 0; k < font->atlas->width; k++)
              tex32[k + j*stride] = frame32[k + j*pitch];

         font->atlas->dirty = 0;
      }

      vita2d_draw_texture_tint_part_scale(font->texture,
            x + (off_x + delta_x) * scale,
            y + (off_y + delta_y) * scale,
            tex_x, tex_y, width, height,
            scale,
            scale,
            color);

      delta_x += glyph->advance_x;
      delta_y += glyph->advance_y;
   }
}
