
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ menu_animation_is_active () ;
 scalar_t__ menu_display_framebuf_dirty ;

bool menu_display_get_update_pending(void)
{
   if (menu_animation_is_active() || menu_display_framebuf_dirty)
      return 1;
   return 0;
}
