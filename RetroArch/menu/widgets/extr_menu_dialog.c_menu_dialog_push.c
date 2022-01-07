
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int label; int enum_idx; int list; } ;
typedef TYPE_1__ menu_displaylist_info_t ;


 int DISPLAYLIST_HELP ;
 int MENU_ENUM_LABEL_HELP ;
 int menu_dialog_is_push_pending () ;
 int menu_displaylist_ctl (int ,TYPE_1__*) ;
 int menu_displaylist_info_init (TYPE_1__*) ;
 int menu_entries_get_menu_stack_ptr (int ) ;
 char* msg_hash_to_str (int ) ;
 int strdup (char const*) ;

void menu_dialog_push(void)
{
   menu_displaylist_info_t info;
   const char *label;

   if (!menu_dialog_is_push_pending())
      return;

   menu_displaylist_info_init(&info);

   info.list = menu_entries_get_menu_stack_ptr(0);
   info.enum_idx = MENU_ENUM_LABEL_HELP;


   label = msg_hash_to_str(MENU_ENUM_LABEL_HELP);
   if (label)
      info.label = strdup(label);

   menu_displaylist_ctl(DISPLAYLIST_HELP, &info);
}
