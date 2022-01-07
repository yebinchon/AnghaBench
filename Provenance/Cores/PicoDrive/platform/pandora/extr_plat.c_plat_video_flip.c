
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PicoDrawSetOutBuf (int ,int) ;
 int g_screen_ptr ;
 int g_screen_width ;
 int layer_fb ;
 int vout_fbdev_flip (int ) ;
 int xenv_update (int *,int *,int *,int *) ;

void plat_video_flip(void)
{
 g_screen_ptr = vout_fbdev_flip(layer_fb);
 PicoDrawSetOutBuf(g_screen_ptr, g_screen_width * 2);


 xenv_update(((void*)0), ((void*)0), ((void*)0), ((void*)0));
}
