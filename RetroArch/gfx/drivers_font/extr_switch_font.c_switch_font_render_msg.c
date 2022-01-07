
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int width; unsigned int height; int font_msg_color_r; int font_msg_color_g; int font_msg_color_b; } ;
typedef TYPE_1__ video_frame_info_t ;
typedef int switch_font_t ;
struct font_params {float x; float y; float scale; int text_align; int drop_x; int drop_y; float drop_mod; float drop_alpha; unsigned int color; } ;
typedef enum text_alignment { ____Placeholder_text_alignment } text_alignment ;


 unsigned int COLOR_ABGR (unsigned int,unsigned int,unsigned int,unsigned int) ;
 unsigned int FONT_COLOR_GET_ALPHA (unsigned int) ;
 unsigned int FONT_COLOR_GET_BLUE (unsigned int) ;
 unsigned int FONT_COLOR_GET_GREEN (unsigned int) ;
 unsigned int FONT_COLOR_GET_RED (unsigned int) ;
 int TEXT_ALIGN_LEFT ;
 unsigned int strlen (char const*) ;
 int switch_font_render_message (TYPE_1__*,int *,char const*,float,unsigned int,float,float,int) ;

__attribute__((used)) static void switch_font_render_msg(
    video_frame_info_t *video_info,
    void *data, const char *msg,
    const struct font_params *params)
{
      float x, y, scale, drop_mod, drop_alpha;
      int drop_x, drop_y;
      unsigned max_glyphs;
      enum text_alignment text_align;
      unsigned color, color_dark, r, g, b,
          alpha, r_dark, g_dark, b_dark, alpha_dark;
      switch_font_t *font = (switch_font_t *)data;
      unsigned width = video_info->width;
      unsigned height = video_info->height;

      if (!font || !msg || msg && !*msg)
            return;

      if (params)
      {
            x = params->x;
            y = params->y;
            scale = params->scale;
            text_align = params->text_align;
            drop_x = params->drop_x;
            drop_y = params->drop_y;
            drop_mod = params->drop_mod;
            drop_alpha = params->drop_alpha;

            r = FONT_COLOR_GET_RED(params->color);
            g = FONT_COLOR_GET_GREEN(params->color);
            b = FONT_COLOR_GET_BLUE(params->color);
            alpha = FONT_COLOR_GET_ALPHA(params->color);

            color = params->color;
      }
      else
      {
            x = 0.0f;
            y = 0.0f;
            scale = 1.0f;
            text_align = TEXT_ALIGN_LEFT;

            r = (video_info->font_msg_color_r * 255);
            g = (video_info->font_msg_color_g * 255);
            b = (video_info->font_msg_color_b * 255);
            alpha = 255;
            color = COLOR_ABGR(r, g, b, alpha);

            drop_x = -2;
            drop_y = -2;
            drop_mod = 0.3f;
            drop_alpha = 1.0f;
      }

      max_glyphs = strlen(msg);
      switch_font_render_message(video_info, font, msg, scale,
                                 color, x, y, text_align);
}
