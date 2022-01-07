
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef char uint8_t ;
struct font_glyph {int draw_offset_x; int draw_offset_y; int atlas_offset_x; int atlas_offset_y; scalar_t__ advance_y; scalar_t__ advance_x; scalar_t__ height; scalar_t__ width; } ;
struct TYPE_13__ {unsigned int video_msg_pos_x; float video_msg_pos_y; } ;
struct TYPE_16__ {TYPE_2__ floats; } ;
typedef TYPE_5__ settings_t ;
struct TYPE_15__ {int tex; } ;
struct TYPE_12__ {unsigned int width; unsigned int height; } ;
struct TYPE_17__ {TYPE_4__ font; int renderer; int font_data; TYPE_3__* font_driver; int font_b; int font_g; int font_r; TYPE_1__ vp; } ;
typedef TYPE_6__ sdl2_video_t ;
struct TYPE_18__ {int x; int y; int w; int h; } ;
struct TYPE_14__ {struct font_glyph* (* get_glyph ) (int ,char) ;} ;
typedef TYPE_7__ SDL_Rect ;


 int SDL_FLIP_NONE ;
 int SDL_RenderCopyEx (int ,int ,TYPE_7__*,TYPE_7__*,int ,int *,int ) ;
 int SDL_SetTextureColorMod (int ,int ,int ,int ) ;
 TYPE_5__* config_get_ptr () ;
 struct font_glyph* stub1 (int ,char) ;
 struct font_glyph* stub2 (int ,char) ;

__attribute__((used)) static void sdl2_render_msg(sdl2_video_t *vid, const char *msg)
{
   int x, y, delta_x, delta_y;
   unsigned width = vid->vp.width;
   unsigned height = vid->vp.height;
   settings_t *settings = config_get_ptr();

   if (!vid->font_data)
      return;

   x = settings->floats.video_msg_pos_x * width;
   y = (1.0f - settings->floats.video_msg_pos_y) * height;
   delta_x = 0;
   delta_y = 0;

   SDL_SetTextureColorMod(vid->font.tex, vid->font_r, vid->font_g, vid->font_b);

   for (; *msg; msg++)
   {
      SDL_Rect src_rect, dst_rect;
      int off_x, off_y, tex_x, tex_y;
      const struct font_glyph *gly =
         vid->font_driver->get_glyph(vid->font_data, (uint8_t)*msg);

      if (!gly)
         gly = vid->font_driver->get_glyph(vid->font_data, '?');

      if (!gly)
         continue;

      off_x = gly->draw_offset_x;
      off_y = gly->draw_offset_y;
      tex_x = gly->atlas_offset_x;
      tex_y = gly->atlas_offset_y;

      src_rect.x = tex_x;
      src_rect.y = tex_y;
      src_rect.w = (int)gly->width;
      src_rect.h = (int)gly->height;

      dst_rect.x = x + delta_x + off_x;
      dst_rect.y = y + delta_y + off_y;
      dst_rect.w = (int)gly->width;
      dst_rect.h = (int)gly->height;

      SDL_RenderCopyEx(vid->renderer, vid->font.tex,
            &src_rect, &dst_rect, 0, ((void*)0), SDL_FLIP_NONE);

      delta_x += gly->advance_x;
      delta_y -= gly->advance_y;
   }
}
