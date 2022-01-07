
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int menu_file_list_cbs_t ;
typedef int menu_entry_t ;
struct TYPE_8__ {int type; int enabled; } ;
typedef TYPE_2__ materialui_nav_bar_action_tab_t ;
struct TYPE_7__ {unsigned int num_menu_tabs; scalar_t__ location; int * menu_tabs; TYPE_2__ resume_tab; TYPE_2__ back_tab; } ;
struct TYPE_9__ {TYPE_1__ nav_bar; } ;
typedef TYPE_3__ materialui_handle_t ;


 int CMD_EVENT_MENU_TOGGLE ;
 int MENU_ACTION_CANCEL ;
 int MENU_ACTION_NOOP ;


 scalar_t__ MUI_NAV_BAR_LOCATION_RIGHT ;
 unsigned int MUI_NAV_BAR_NUM_ACTION_TABS ;
 int command_event (int ,int *) ;
 int materialui_menu_entry_action (TYPE_3__*,int *,size_t,int ) ;
 int materialui_switch_tabs (TYPE_3__*,int *,int ) ;

__attribute__((used)) static int materialui_pointer_up_nav_bar(
      materialui_handle_t *mui,
      unsigned x, unsigned y, unsigned width, unsigned height, size_t selection,
      menu_file_list_cbs_t *cbs, menu_entry_t *entry, unsigned action)
{
   unsigned num_tabs = mui->nav_bar.num_menu_tabs + MUI_NAV_BAR_NUM_ACTION_TABS;
   unsigned tab_index;



   if (mui->nav_bar.location == MUI_NAV_BAR_LOCATION_RIGHT)
      tab_index = y / (height / num_tabs);
   else
      tab_index = x / (width / num_tabs);


   if ((tab_index == 0) || (tab_index >= num_tabs - 1))
   {
      materialui_nav_bar_action_tab_t *target_tab = ((void*)0);

      if (mui->nav_bar.location == MUI_NAV_BAR_LOCATION_RIGHT)
         target_tab = (tab_index == 0) ?
               &mui->nav_bar.resume_tab : &mui->nav_bar.back_tab;
      else
         target_tab = (tab_index == 0) ?
               &mui->nav_bar.back_tab : &mui->nav_bar.resume_tab;

      switch (target_tab->type)
      {
         case 129:
            if (target_tab->enabled)
               return materialui_menu_entry_action(mui, entry, selection, MENU_ACTION_CANCEL);
            break;
         case 128:
            if (target_tab->enabled)
               return command_event(CMD_EVENT_MENU_TOGGLE, ((void*)0)) ? 0 : -1;
            break;
         default:
            break;
      }
   }

   else
      return materialui_switch_tabs(
            mui, &mui->nav_bar.menu_tabs[tab_index - 1], MENU_ACTION_NOOP);

   return 0;
}
