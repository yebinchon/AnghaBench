
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PicoDrawSetOutBuf (int ,int) ;
 int g_screen_ptr ;
 int g_screen_width ;
 int gp2x_video_flip () ;
 scalar_t__ is_16bit_mode () ;

void plat_video_flip(void)
{
 int stride = g_screen_width;
 gp2x_video_flip();

 if (is_16bit_mode())
  stride *= 2;
 PicoDrawSetOutBuf(g_screen_ptr, stride);
}
