
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum menu_dialog_type { ____Placeholder_menu_dialog_type } menu_dialog_type ;


 int menu_dialog_active ;
 int menu_dialog_current_type ;
 int menu_dialog_pending_push ;

void menu_dialog_push_pending(bool push, enum menu_dialog_type type)
{
   menu_dialog_pending_push = push;
   menu_dialog_current_type = type;
   menu_dialog_active = 1;
}
