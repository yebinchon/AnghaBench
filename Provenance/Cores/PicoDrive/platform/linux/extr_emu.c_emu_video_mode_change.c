
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_screen_height ;
 int g_screen_ptr ;
 int g_screen_width ;
 int memset32 (int ,int ,int) ;

void emu_video_mode_change(int start_line, int line_count, int is_32cols)
{

 memset32(g_screen_ptr, 0, g_screen_width * g_screen_height * 2 / 4);
}
