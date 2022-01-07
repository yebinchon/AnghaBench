
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int is_dropdown_list; int is_file_list; int is_playlist; } ;
typedef TYPE_1__ materialui_handle_t ;
typedef enum menu_action { ____Placeholder_menu_action } menu_action ;




 int MENU_ACTION_NOOP ;




 int MENU_LIST_PLAIN ;
 int MUI_ONSCREEN_ENTRY_CENTRE ;
 int MUI_ONSCREEN_ENTRY_FIRST ;
 int MUI_ONSCREEN_ENTRY_LAST ;
 int materialui_auto_select_onscreen_entry (TYPE_1__*,int ) ;
 int materialui_entry_onscreen (TYPE_1__*,size_t) ;
 int materialui_list_get_size (TYPE_1__*,int ) ;
 int materialui_switch_tabs (TYPE_1__*,int *,int) ;
 size_t menu_navigation_get_selection () ;

__attribute__((used)) static enum menu_action materialui_parse_menu_entry_action(
      materialui_handle_t *mui, enum menu_action action)
{
   enum menu_action new_action = action;


   switch (action)
   {
      case 128:
      case 133:



         materialui_auto_select_onscreen_entry(mui, MUI_ONSCREEN_ENTRY_CENTRE);
         break;
      case 132:
      case 131:



         if (materialui_list_get_size(mui, MENU_LIST_PLAIN) == 1)
         {
            materialui_switch_tabs(mui, ((void*)0), action);
            new_action = MENU_ACTION_NOOP;
         }
         else
         {




            if (mui->is_playlist || mui->is_file_list || mui->is_dropdown_list)
               materialui_auto_select_onscreen_entry(mui, MUI_ONSCREEN_ENTRY_CENTRE);
            else
            {
               size_t selection = menu_navigation_get_selection();





               if (!materialui_entry_onscreen(mui, selection))
                  new_action = MENU_ACTION_NOOP;
            }
         }
         break;
      case 129:



         materialui_auto_select_onscreen_entry(mui, MUI_ONSCREEN_ENTRY_LAST);
         break;
      case 130:



         materialui_auto_select_onscreen_entry(mui, MUI_ONSCREEN_ENTRY_FIRST);
         break;
      default:


         break;
   }

   return new_action;
}
