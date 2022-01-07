
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_displaylist_info_t ;
typedef enum menu_displaylist_ctl_state { ____Placeholder_menu_displaylist_ctl_state } menu_displaylist_ctl_state ;


 int menu_cbs_exit () ;
 int menu_displaylist_ctl (int,int *) ;
 int menu_displaylist_process (int *) ;

__attribute__((used)) static int deferred_push_dlist(menu_displaylist_info_t *info, enum menu_displaylist_ctl_state state)
{
   if (!menu_displaylist_ctl(state, info))
      return menu_cbs_exit();
   menu_displaylist_process(info);
   return 0;
}
