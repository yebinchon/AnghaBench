
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct font_params {float x; float y; float scale; float drop_mod; float drop_x; float drop_y; int color; int full_screen; int text_align; float drop_alpha; } ;
typedef int font_data_t ;
typedef enum text_alignment { ____Placeholder_text_alignment } text_alignment ;


 int video_driver_set_osd_msg (char const*,struct font_params*,void*) ;

void menu_display_draw_text(
      const font_data_t *font, const char *text,
      float x, float y, int width, int height,
      uint32_t color, enum text_alignment text_align,
      float scale, bool shadows_enable, float shadow_offset,
      bool draw_outside)
{
   struct font_params params;

   if ((color & 0x000000FF) == 0)
      return;


   if (!draw_outside &&
           ((x < -64 || x > width + 64)
         || (y < -64 || y > height + 64))
      )
      return;

   params.x = x / width;
   params.y = 1.0f - y / height;
   params.scale = scale;
   params.drop_mod = 0.0f;
   params.drop_x = 0.0f;
   params.drop_y = 0.0f;
   params.color = color;
   params.full_screen = 1;
   params.text_align = text_align;

   if (shadows_enable)
   {
      params.drop_x = shadow_offset;
      params.drop_y = -shadow_offset;
      params.drop_alpha = 0.35f;
   }

   video_driver_set_osd_msg(text, &params, (void*)font);
}
