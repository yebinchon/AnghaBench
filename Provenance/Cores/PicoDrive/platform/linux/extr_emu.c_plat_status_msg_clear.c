
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_screen_height ;
 scalar_t__ g_screen_ptr ;
 int g_screen_width ;
 int memset32 (int*,int ,int) ;

void plat_status_msg_clear(void)
{
 unsigned short *d = (unsigned short *)g_screen_ptr + g_screen_width * g_screen_height;
 int l = g_screen_width * 8;
 memset32((int *)(d - l), 0, l * 2 / 4);
}
