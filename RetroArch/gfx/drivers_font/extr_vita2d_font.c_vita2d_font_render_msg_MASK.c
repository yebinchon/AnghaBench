#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vita_font_t ;
struct TYPE_4__ {unsigned int width; unsigned int height; float font_msg_pos_x; float font_msg_pos_y; int font_msg_color_r; int font_msg_color_g; int font_msg_color_b; } ;
typedef  TYPE_1__ video_frame_info_t ;
struct font_params {float x; float y; float scale; int text_align; int drop_x; int drop_y; float drop_mod; float drop_alpha; int /*<<< orphan*/  color; } ;
typedef  enum text_alignment { ____Placeholder_text_alignment } text_alignment ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (unsigned int,unsigned int,unsigned int,unsigned int) ; 
 int TEXT_ALIGN_LEFT ; 
 unsigned int FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,char const*,float,unsigned int,float,float,int) ; 

__attribute__((used)) static void FUNC7(
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
   vita_font_t                *font = (vita_font_t *)data;
   unsigned width                   = video_info->width;
   unsigned height                  = video_info->height;

   if (!font || !msg || !*msg)
      return;

   if (params)
   {
      x              = params->x;
      y              = params->y;
      scale          = params->scale;
      text_align     = params->text_align;
      drop_x         = params->drop_x;
      drop_y         = params->drop_y;
      drop_mod       = params->drop_mod;
      drop_alpha     = params->drop_alpha;
      r    				= FUNC3(params->color);
      g    				= FUNC2(params->color);
      b    				= FUNC1(params->color);
      alpha    		= FUNC0(params->color);
      color    		= FUNC4(r,g,b,alpha);
   }
   else
   {
      x              = video_info->font_msg_pos_x;
      y              = video_info->font_msg_pos_y;
      scale          = 1.0f;
      text_align     = TEXT_ALIGN_LEFT;

      r              = (video_info->font_msg_color_r * 255);
      g              = (video_info->font_msg_color_g * 255);
      b              = (video_info->font_msg_color_b * 255);
      alpha			   = 255;
      color 		   = FUNC4(r,g,b,alpha);

      drop_x         = -2;
      drop_y         = -2;
      drop_mod       = 0.3f;
      drop_alpha     = 1.0f;
   }

   max_glyphs        = FUNC5(msg);

   if (drop_x || drop_y)
      max_glyphs    *= 2;

   if (drop_x || drop_y)
   {
      r_dark         = r * drop_mod;
      g_dark         = g * drop_mod;
      b_dark         = b * drop_mod;
      alpha_dark		= alpha * drop_alpha;
      color_dark     = FUNC4(r_dark,g_dark,b_dark,alpha_dark);

      FUNC6(video_info, font, msg, scale, color_dark,
            x + scale * drop_x / width, y +
            scale * drop_y / height, text_align);
   }

   FUNC6(video_info, font, msg, scale,
         color, x, y, text_align);
}