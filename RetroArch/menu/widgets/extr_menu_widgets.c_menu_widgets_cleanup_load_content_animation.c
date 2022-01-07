
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int ) ;
 int load_content_animation_content_name ;
 int load_content_animation_running ;

void menu_widgets_cleanup_load_content_animation(void)
{
   load_content_animation_running = 0;
   free(load_content_animation_content_name);
}
