
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DirectPresent () ;
 int DirectScreen (int ) ;
 int g_screen_ptr ;

void plat_video_flip(void)
{
 DirectScreen(g_screen_ptr);
 DirectPresent();
}
