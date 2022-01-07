
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int menu_display_framebuf_height ;

void menu_display_set_height(unsigned height)
{
   menu_display_framebuf_height = height;
}
