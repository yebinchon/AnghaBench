
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum msg_hash_enums { ____Placeholder_msg_hash_enums } msg_hash_enums ;
typedef enum menu_dialog_type { ____Placeholder_menu_dialog_type } menu_dialog_type ;


 int menu_dialog_current_msg ;
 int menu_dialog_push () ;
 int menu_dialog_push_pending (int,int) ;

void menu_dialog_show_message(
      enum menu_dialog_type type, enum msg_hash_enums msg)
{
   menu_dialog_current_msg = msg;

   menu_dialog_push_pending(1, type);
   menu_dialog_push();
}
