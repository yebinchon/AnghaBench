
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_menuscreen_ptr ;
 int g_screen_ptr ;

void plat_video_menu_begin(void)
{
 g_menuscreen_ptr = g_screen_ptr;
}
