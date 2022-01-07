
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* notify_content_loaded ) (int ) ;} ;
typedef TYPE_1__ ui_companion_driver_t ;


 int stub1 (int ) ;
 TYPE_1__* ui_companion ;
 int ui_companion_data ;

void ui_companion_driver_notify_content_loaded(void)
{
   const ui_companion_driver_t *ui = ui_companion;
   if (ui && ui->notify_content_loaded)
      ui->notify_content_loaded(ui_companion_data);
}
