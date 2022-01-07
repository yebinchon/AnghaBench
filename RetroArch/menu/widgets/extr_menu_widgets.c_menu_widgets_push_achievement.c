
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cheevo_badge ;
 int cheevo_title ;
 int menu_widgets_achievement_free (int *) ;
 int menu_widgets_get_badge_texture (int *,char const*) ;
 int menu_widgets_start_achievement_notification () ;
 int strdup (char const*) ;

void menu_widgets_push_achievement(const char *title, const char *badge)
{
   menu_widgets_achievement_free(((void*)0));



   cheevo_title = strdup(title);
   menu_widgets_get_badge_texture(&cheevo_badge, badge);

   menu_widgets_start_achievement_notification();
}
