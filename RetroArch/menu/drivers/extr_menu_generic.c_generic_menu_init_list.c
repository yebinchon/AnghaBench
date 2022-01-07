
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * list; int flags; int type; int label; int path; int enum_idx; } ;
typedef TYPE_1__ menu_displaylist_info_t ;
typedef int file_list_t ;


 int DISPLAYLIST_MAIN_MENU ;
 int MENU_ENUM_LABEL_MAIN_MENU ;
 scalar_t__ menu_displaylist_ctl (int ,TYPE_1__*) ;
 int menu_displaylist_info_free (TYPE_1__*) ;
 int menu_displaylist_info_init (TYPE_1__*) ;
 int menu_displaylist_process (TYPE_1__*) ;
 int menu_entries_append_enum (int *,int ,int ,int ,int ,int ,int ) ;
 int * menu_entries_get_menu_stack_ptr (int ) ;
 int * menu_entries_get_selection_buf_ptr (int ) ;
 int msg_hash_to_str (int ) ;
 int strdup (int ) ;

bool generic_menu_init_list(void *data)
{
   menu_displaylist_info_t info;
   file_list_t *menu_stack = menu_entries_get_menu_stack_ptr(0);
   file_list_t *selection_buf = menu_entries_get_selection_buf_ptr(0);

   menu_displaylist_info_init(&info);

   info.label = strdup(
         msg_hash_to_str(MENU_ENUM_LABEL_MAIN_MENU));
   info.enum_idx = MENU_ENUM_LABEL_MAIN_MENU;

   menu_entries_append_enum(menu_stack,
         info.path,
         info.label,
         MENU_ENUM_LABEL_MAIN_MENU,
         info.type, info.flags, 0);

   info.list = selection_buf;

   if (menu_displaylist_ctl(DISPLAYLIST_MAIN_MENU, &info))
      menu_displaylist_process(&info);

   menu_displaylist_info_free(&info);

   return 1;
}
