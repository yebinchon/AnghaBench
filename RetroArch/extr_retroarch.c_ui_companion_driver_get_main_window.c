
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* (* get_main_window ) (int ) ;} ;
typedef TYPE_1__ ui_companion_driver_t ;


 void* stub1 (int ) ;
 TYPE_1__* ui_companion ;
 int ui_companion_data ;

void *ui_companion_driver_get_main_window(void)
{
   const ui_companion_driver_t *ui = ui_companion;
   if (!ui || !ui->get_main_window)
      return ((void*)0);
   return ui->get_main_window(ui_companion_data);
}
