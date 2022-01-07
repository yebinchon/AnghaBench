
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int borders_pending ;
 scalar_t__ g_border_style ;
 int g_menubg_ptr ;
 int g_menuscreen_h ;
 int g_menuscreen_ptr ;
 int g_menuscreen_w ;
 int memcpy (int ,int ,int) ;
 int menu_darken_bg (int ,int ,int,int) ;
 int menu_reset_borders () ;
 int plat_video_menu_begin () ;

__attribute__((used)) static void menu_draw_begin(int need_bg, int no_borders)
{
 plat_video_menu_begin();

 menu_reset_borders();
 borders_pending = g_border_style && !no_borders;

 if (need_bg) {
  if (g_border_style && no_borders) {
   menu_darken_bg(g_menuscreen_ptr, g_menubg_ptr,
    g_menuscreen_w * g_menuscreen_h, 1);
  }
  else {
   memcpy(g_menuscreen_ptr, g_menubg_ptr,
    g_menuscreen_w * g_menuscreen_h * 2);
  }
 }
}
