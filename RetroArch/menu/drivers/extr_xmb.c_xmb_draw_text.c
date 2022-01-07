
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {float alpha; int shadow_offset; } ;
typedef TYPE_2__ xmb_handle_t ;
struct TYPE_10__ {int xmb_shadows_enable; } ;
typedef TYPE_3__ video_frame_info_t ;
typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_8__ {int menu_font_color_blue; int menu_font_color_green; int menu_font_color_red; } ;
struct TYPE_11__ {TYPE_1__ uints; } ;
typedef TYPE_4__ settings_t ;
typedef int font_data_t ;
typedef enum text_alignment { ____Placeholder_text_alignment } text_alignment ;


 int FONT_COLOR_RGBA (int ,int ,int ,int) ;
 TYPE_4__* config_get_ptr () ;
 int menu_display_draw_text (int *,char const*,float,float,unsigned int,unsigned int,int ,int,float,int ,int ,int) ;

__attribute__((used)) static void xmb_draw_text(
      video_frame_info_t *video_info,
      xmb_handle_t *xmb,
      const char *str, float x,
      float y, float scale_factor, float alpha,
      enum text_alignment text_align,
      unsigned width, unsigned height, font_data_t* font)
{
   uint32_t color;
   uint8_t a8;
   settings_t *settings;

   if (alpha > xmb->alpha)
      alpha = xmb->alpha;

   a8 = 255 * alpha;


   if (a8 == 0)
      return;

   settings = config_get_ptr();
   color = FONT_COLOR_RGBA(
         settings->uints.menu_font_color_red,
         settings->uints.menu_font_color_green,
         settings->uints.menu_font_color_blue, a8);

   menu_display_draw_text(font, str, x, y,
         width, height, color, text_align, scale_factor,
         video_info->xmb_shadows_enable,
         xmb->shadow_offset, 0);
}
