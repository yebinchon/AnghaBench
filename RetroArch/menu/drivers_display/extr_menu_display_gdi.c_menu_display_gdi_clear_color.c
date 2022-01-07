
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_frame_info_t ;
typedef int menu_display_ctx_clearcolor_t ;


 int menu_display_gdi_restore_clear_color () ;

__attribute__((used)) static void menu_display_gdi_clear_color(
      menu_display_ctx_clearcolor_t *clearcolor,
      video_frame_info_t *video_info)
{
   (void)clearcolor;

   menu_display_gdi_restore_clear_color();
}
