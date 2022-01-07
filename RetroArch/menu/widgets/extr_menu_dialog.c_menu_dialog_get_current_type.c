
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum menu_dialog_type { ____Placeholder_menu_dialog_type } menu_dialog_type ;


 int menu_dialog_current_type ;

enum menu_dialog_type menu_dialog_get_current_type(void)
{
   return menu_dialog_current_type;
}
