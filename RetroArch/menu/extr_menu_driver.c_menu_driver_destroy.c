
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * menu_driver_ctx ;
 int menu_driver_data_own ;
 int menu_driver_pending_quick_menu ;
 int menu_driver_prevent_populate ;
 int * menu_userdata ;

void menu_driver_destroy(void)
{
   menu_driver_pending_quick_menu = 0;
   menu_driver_prevent_populate = 0;
   menu_driver_data_own = 0;
   menu_driver_ctx = ((void*)0);
   menu_userdata = ((void*)0);
}
