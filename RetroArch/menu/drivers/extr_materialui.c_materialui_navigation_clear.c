
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int materialui_handle_t ;


 int MENU_ENTRIES_CTL_SET_START ;
 int MUI_ANIM_DURATION_SCROLL_RESET ;
 int materialui_animate_scroll (int *,float,int ) ;
 int menu_entries_ctl (int ,size_t*) ;

__attribute__((used)) static void materialui_navigation_clear(void *data, bool pending_push)
{
   size_t i = 0;
   materialui_handle_t *mui = (materialui_handle_t*)data;
   if (!mui)
      return;

   menu_entries_ctl(MENU_ENTRIES_CTL_SET_START, &i);

   materialui_animate_scroll(
         mui,
         0.0f,
         MUI_ANIM_DURATION_SCROLL_RESET);
}
