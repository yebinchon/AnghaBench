
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MENU_WIDGETS_ICON_LAST ;
 int * font_bold ;
 int * font_regular ;
 int menu_display_font_free (int *) ;
 int * menu_widgets_icons_textures ;
 int msg_queue_icon ;
 int msg_queue_icon_outline ;
 int msg_queue_icon_rect ;
 int video_driver_texture_unload (int *) ;

void menu_widgets_context_destroy(void)
{
   int i;




   for (i = 0; i < MENU_WIDGETS_ICON_LAST; i++)
   {
      video_driver_texture_unload(&menu_widgets_icons_textures[i]);
   }

   video_driver_texture_unload(&msg_queue_icon);
   video_driver_texture_unload(&msg_queue_icon_outline);
   video_driver_texture_unload(&msg_queue_icon_rect);


   menu_display_font_free(font_regular);
   menu_display_font_free(font_bold);

   font_regular = ((void*)0);
   font_bold = ((void*)0);
}
