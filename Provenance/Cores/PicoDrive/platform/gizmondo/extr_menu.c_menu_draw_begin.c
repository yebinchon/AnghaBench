
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bg_buffer ;
 int memcpy32 (int*,int*,int) ;
 scalar_t__ menu_screen ;

void menu_draw_begin(int use_bgbuff)
{
 if (use_bgbuff)
  memcpy32((int *)menu_screen, (int *)bg_buffer, 321*240*2/4);
}
