
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int type; } ;
typedef TYPE_2__ materialui_nav_bar_menu_tab_t ;
typedef int materialui_handle_t ;
struct TYPE_8__ {size_t size; TYPE_1__* list; } ;
typedef TYPE_3__ file_list_t ;
struct TYPE_6__ {void* type; int * label; } ;


 int MENU_ENUM_LABEL_MAIN_MENU ;
 int MENU_ENUM_LABEL_PLAYLISTS_TAB ;
 int MENU_ENUM_LABEL_SETTINGS_TAB ;
 int MENU_LIST_PLAIN ;
 void* MENU_PLAYLISTS_TAB ;
 void* MENU_SETTINGS ;



 int filebrowser_clear_type () ;
 int free (int *) ;
 int materialui_list_get_size (int *,int ) ;
 int menu_entries_flush_stack (int ,int ) ;
 TYPE_3__* menu_entries_get_menu_stack_ptr (int ) ;
 int msg_hash_to_str (int ) ;
 void* strdup (int ) ;

__attribute__((used)) static bool materialui_preswitch_tabs(
      materialui_handle_t *mui, materialui_nav_bar_menu_tab_t *target_tab)
{
   size_t stack_size = 0;
   file_list_t *menu_stack = ((void*)0);
   bool stack_flushed = 0;
   if (materialui_list_get_size(mui, MENU_LIST_PLAIN) > 1)
   {
      stack_flushed = 1;
      menu_entries_flush_stack(msg_hash_to_str(MENU_ENUM_LABEL_MAIN_MENU), 0);

      filebrowser_clear_type();
   }




   menu_stack = menu_entries_get_menu_stack_ptr(0);
   stack_size = menu_stack->size;




   if (stack_size < 1)
      return 0;


   if (menu_stack->list[stack_size - 1].label)
      free(menu_stack->list[stack_size - 1].label);
   menu_stack->list[stack_size - 1].label = ((void*)0);


   switch (target_tab->type)
   {
      case 129:
         menu_stack->list[stack_size - 1].label =
            strdup(msg_hash_to_str(MENU_ENUM_LABEL_PLAYLISTS_TAB));
         menu_stack->list[stack_size - 1].type =
            MENU_PLAYLISTS_TAB;
         break;
      case 128:
         menu_stack->list[stack_size - 1].label =
            strdup(msg_hash_to_str(MENU_ENUM_LABEL_SETTINGS_TAB));
         menu_stack->list[stack_size - 1].type =
            MENU_SETTINGS;
         break;
      case 130:
      default:
         menu_stack->list[stack_size - 1].label =
            strdup(msg_hash_to_str(MENU_ENUM_LABEL_MAIN_MENU));
         menu_stack->list[stack_size - 1].type =
            MENU_SETTINGS;
         break;
   }

   return stack_flushed;
}
