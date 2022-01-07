
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_menuscreen_h ;
 int g_menuscreen_w ;
 int g_screen_ptr ;
 int plat_sdl_change_video_mode (int ,int ,int ) ;
 int shadow_fb ;

void plat_video_menu_enter(int is_rom_loaded)
{
 plat_sdl_change_video_mode(g_menuscreen_w, g_menuscreen_h, 0);
 g_screen_ptr = shadow_fb;
}
