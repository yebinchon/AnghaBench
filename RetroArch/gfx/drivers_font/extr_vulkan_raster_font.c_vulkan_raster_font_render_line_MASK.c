#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {float width; float height; } ;
struct TYPE_12__ {scalar_t__ vertices; scalar_t__ pv; int /*<<< orphan*/  font_data; TYPE_3__* font_driver; TYPE_5__* vk; TYPE_1__ texture; } ;
typedef  TYPE_4__ vulkan_raster_t ;
struct TYPE_10__ {float width; float height; } ;
struct TYPE_13__ {TYPE_2__ vp; } ;
typedef  TYPE_5__ vk_t ;
struct vk_color {float r; float g; float b; float a; } ;
struct font_glyph {int draw_offset_x; int draw_offset_y; int atlas_offset_x; int atlas_offset_y; int width; int height; scalar_t__ advance_y; scalar_t__ advance_x; } ;
struct TYPE_11__ {struct font_glyph* (* get_glyph ) (int /*<<< orphan*/ ,char) ;} ;

/* Variables and functions */
#define  TEXT_ALIGN_CENTER 129 
#define  TEXT_ALIGN_RIGHT 128 
 int FUNC0 (float) ; 
 struct font_glyph* FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 struct font_glyph* FUNC2 (int /*<<< orphan*/ ,char) ; 
 unsigned int FUNC3 (char const**) ; 
 int FUNC4 (TYPE_4__*,char const*,unsigned int,float) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,struct font_glyph const*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int,int,int,int,int,int,int,struct vk_color*) ; 

__attribute__((used)) static void FUNC7(
      vulkan_raster_t *font, const char *msg, unsigned msg_len,
      float scale, const float color[4], float pos_x,
      float pos_y, unsigned text_align)
{
   struct vk_color vk_color;
   vk_t *vk             = font->vk;
   const char* msg_end  = msg + msg_len;
   int x                = FUNC0(pos_x * vk->vp.width);
   int y                = FUNC0((1.0f - pos_y) * vk->vp.height);
   int delta_x          = 0;
   int delta_y          = 0;
   float inv_tex_size_x = 1.0f / font->texture.width;
   float inv_tex_size_y = 1.0f / font->texture.height;
   float inv_win_width  = 1.0f / font->vk->vp.width;
   float inv_win_height = 1.0f / font->vk->vp.height;

   vk_color.r           = color[0];
   vk_color.g           = color[1];
   vk_color.b           = color[2];
   vk_color.a           = color[3];

   switch (text_align)
   {
      case TEXT_ALIGN_RIGHT:
         x -= FUNC4(font, msg, msg_len, scale);
         break;
      case TEXT_ALIGN_CENTER:
         x -= FUNC4(font, msg, msg_len, scale) / 2;
         break;
   }

   while (msg < msg_end)
   {
      int off_x, off_y, tex_x, tex_y, width, height;
      unsigned code                  = FUNC3(&msg);
      const struct font_glyph *glyph =
         font->font_driver->get_glyph(font->font_data, code);

      if (!glyph) /* Do something smarter here ... */
         glyph = font->font_driver->get_glyph(font->font_data, '?');
      if (!glyph)
         continue;

      FUNC5(font, glyph);

      off_x  = glyph->draw_offset_x;
      off_y  = glyph->draw_offset_y;
      tex_x  = glyph->atlas_offset_x;
      tex_y  = glyph->atlas_offset_y;
      width  = glyph->width;
      height = glyph->height;

      FUNC6(font->pv + font->vertices,
            (x + (off_x + delta_x) * scale) * inv_win_width,
            (y + (off_y + delta_y) * scale) * inv_win_height,
            width * scale * inv_win_width,
            height * scale * inv_win_height,
            tex_x * inv_tex_size_x,
            tex_y * inv_tex_size_y,
            width * inv_tex_size_x,
            height * inv_tex_size_y,
            &vk_color);

      font->vertices += 6;

      delta_x        += glyph->advance_x;
      delta_y        += glyph->advance_y;
   }
}