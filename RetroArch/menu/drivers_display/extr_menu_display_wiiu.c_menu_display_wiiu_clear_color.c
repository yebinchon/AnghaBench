
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int video_frame_info_t ;
struct TYPE_3__ {float r; float g; float b; float a; } ;
typedef TYPE_1__ menu_display_ctx_clearcolor_t ;


 int RGBA8 (int,int,int,int) ;
 int wiiu_clear_screen () ;
 int wiiu_set_clear_color (int ) ;

__attribute__((used)) static void menu_display_wiiu_clear_color(
      menu_display_ctx_clearcolor_t *clearcolor,
      video_frame_info_t *video_info)
{
   if (!clearcolor)
      return;







}
