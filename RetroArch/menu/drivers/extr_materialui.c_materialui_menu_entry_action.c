
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int path_enabled; int label_enabled; int rich_label_enabled; int value_enabled; int sublabel_enabled; } ;
typedef TYPE_1__ menu_entry_t ;
typedef int materialui_handle_t ;
typedef enum menu_action { ____Placeholder_menu_action } menu_action ;


 int generic_menu_entry_action (void*,TYPE_1__*,size_t,int) ;
 int materialui_parse_menu_entry_action (int *,int) ;
 int menu_entry_get (TYPE_1__*,int ,size_t,int *,int) ;
 int menu_entry_init (TYPE_1__*) ;
 size_t menu_navigation_get_selection () ;

__attribute__((used)) static int materialui_menu_entry_action(
      void *userdata, menu_entry_t *entry,
      size_t i, enum menu_action action)
{
   materialui_handle_t *mui = (materialui_handle_t*)userdata;
   menu_entry_t *entry_ptr = entry;
   size_t selection = i;
   size_t new_selection;
   enum menu_action new_action;

   if (!mui)
      generic_menu_entry_action(userdata, entry, i, action);


   new_action = materialui_parse_menu_entry_action(mui, action);
   new_selection = menu_navigation_get_selection();

   if (new_selection != selection)
   {
      static menu_entry_t new_entry;




      menu_entry_init(&new_entry);
      new_entry.path_enabled = 0;
      new_entry.label_enabled = 0;
      new_entry.rich_label_enabled = 0;
      new_entry.value_enabled = 0;
      new_entry.sublabel_enabled = 0;
      menu_entry_get(&new_entry, 0, new_selection, ((void*)0), 1);
      entry_ptr = &new_entry;
   }


   return generic_menu_entry_action(userdata, entry_ptr, new_selection, new_action);
}
