
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_displaylist_info_t ;


 int DISPLAYLIST_HORIZONTAL_CONTENT_ACTIONS ;
 int menu_displaylist_ctl (int ,int *) ;
 int menu_displaylist_info_free (int *) ;
 int menu_displaylist_process (int *) ;

__attribute__((used)) static int xmb_deferred_push_content_actions(menu_displaylist_info_t *info)
{
   if (!menu_displaylist_ctl(
            DISPLAYLIST_HORIZONTAL_CONTENT_ACTIONS, info))
      return -1;
   menu_displaylist_process(info);
   menu_displaylist_info_free(info);
   return 0;
}
