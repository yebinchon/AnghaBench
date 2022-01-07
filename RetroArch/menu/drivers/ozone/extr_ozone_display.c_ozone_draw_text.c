
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_frame_info_t ;
typedef int uint32_t ;
typedef int ozone_handle_t ;
typedef int font_data_t ;
typedef enum text_alignment { ____Placeholder_text_alignment } text_alignment ;


 int menu_display_draw_text (int *,char const*,float,float,unsigned int,unsigned int,int ,int,float,int,double,int) ;

void ozone_draw_text(
      video_frame_info_t *video_info,
      ozone_handle_t *ozone,
      const char *str, float x,
      float y,
      enum text_alignment text_align,
      unsigned width, unsigned height, font_data_t* font,
      uint32_t color,
      bool draw_outside)
{
   menu_display_draw_text(font, str, x, y,
         width, height, color, text_align, 1.0f,
         0,
         1.0, draw_outside);
}
