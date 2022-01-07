
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cheevo_badge ;
 int * cheevo_title ;
 int free (int *) ;
 int video_driver_texture_unload (scalar_t__*) ;

__attribute__((used)) static void menu_widgets_achievement_free(void *userdata)
{
   if (cheevo_title)
   {
      free(cheevo_title);
      cheevo_title = ((void*)0);
   }

   if (cheevo_badge)
   {
      video_driver_texture_unload(&cheevo_badge);
      cheevo_badge = 0;
   }
}
