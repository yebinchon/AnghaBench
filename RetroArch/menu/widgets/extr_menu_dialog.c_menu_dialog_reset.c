
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MENU_DIALOG_NONE ;
 int MSG_UNKNOWN ;
 scalar_t__ menu_dialog_current_id ;
 int menu_dialog_current_msg ;
 int menu_dialog_current_type ;
 int menu_dialog_pending_push ;

void menu_dialog_reset(void)
{
   menu_dialog_pending_push = 0;
   menu_dialog_current_id = 0;
   menu_dialog_current_type = MENU_DIALOG_NONE;
   menu_dialog_current_msg = MSG_UNKNOWN;
}
