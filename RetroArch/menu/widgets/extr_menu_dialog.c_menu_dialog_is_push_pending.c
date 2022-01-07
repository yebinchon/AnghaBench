
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int menu_dialog_pending_push ;

bool menu_dialog_is_push_pending(void)
{
   return menu_dialog_pending_push;
}
