
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int menu_display_framebuf_dirty ;

void menu_display_set_framebuffer_dirty_flag(void)
{
   menu_display_framebuf_dirty = 1;
}
