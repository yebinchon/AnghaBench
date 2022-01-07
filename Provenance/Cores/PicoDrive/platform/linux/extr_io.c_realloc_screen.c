
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_menubg_ptr ;
 int g_menuscreen_h ;
 int g_menuscreen_w ;
 int g_screen_height ;
 int g_screen_ptr ;
 int g_screen_width ;
 int memset (int ,int ,int) ;
 int realloc (int ,int) ;
 scalar_t__ scr_changed ;
 int scr_h ;
 int scr_w ;

__attribute__((used)) static void realloc_screen(void)
{
 int size = scr_w * scr_h * 2;
 g_screen_width = g_menuscreen_w = scr_w;
 g_screen_height = g_menuscreen_h = scr_h;
 g_screen_ptr = realloc(g_screen_ptr, size);
 g_menubg_ptr = realloc(g_menubg_ptr, size);
 memset(g_screen_ptr, 0, size);
 memset(g_menubg_ptr, 0, size);
 scr_changed = 0;
}
