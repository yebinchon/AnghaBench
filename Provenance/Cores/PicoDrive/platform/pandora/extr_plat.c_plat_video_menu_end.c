
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_menuscreen_ptr ;
 int main_fb ;
 int vout_fbdev_flip (int ) ;

void plat_video_menu_end(void)
{
 g_menuscreen_ptr = vout_fbdev_flip(main_fb);
}
