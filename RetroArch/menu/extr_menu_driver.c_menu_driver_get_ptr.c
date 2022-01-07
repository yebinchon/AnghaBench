
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int menu_handle_t ;


 int * menu_driver_data ;

menu_handle_t *menu_driver_get_ptr(void)
{
   return menu_driver_data;
}
