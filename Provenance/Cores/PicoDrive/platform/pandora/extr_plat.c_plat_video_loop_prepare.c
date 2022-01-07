
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_menuscreen_h ;
 int g_menuscreen_ptr ;
 int g_menuscreen_w ;
 int main_fb ;
 int memset (int ,int ,int) ;
 int vout_fbdev_flip (int ) ;

void plat_video_loop_prepare(void)
{

 memset(g_menuscreen_ptr, 0, g_menuscreen_w * g_menuscreen_h * 2);
 g_menuscreen_ptr = vout_fbdev_flip(main_fb);


}
