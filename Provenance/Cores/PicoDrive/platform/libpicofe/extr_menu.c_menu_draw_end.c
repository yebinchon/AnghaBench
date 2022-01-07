
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ borders_pending ;
 int menu_darken_text_bg () ;
 int plat_video_menu_end () ;

__attribute__((used)) static void menu_draw_end(void)
{
 if (borders_pending)
  menu_darken_text_bg();
 plat_video_menu_end();
}
