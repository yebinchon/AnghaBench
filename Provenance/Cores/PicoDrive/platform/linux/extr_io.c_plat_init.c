
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int g_menubg_ptr ;
 int g_menuscreen_h ;
 int g_menuscreen_w ;
 int g_screen_height ;
 int g_screen_ptr ;
 int g_screen_width ;
 int memset (int ,int ,int) ;
 int realloc (int ,int) ;
 int realloc_screen () ;
 int vout_fbdev_init (int*,int*) ;
 int xlib_init () ;

void plat_init(void)
{
 realloc_screen();
 memset(g_screen_ptr, 0, g_screen_width * g_screen_height * 2);
 xlib_init();

}
