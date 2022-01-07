
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int (* notify_refresh ) (int ) ;} ;
typedef TYPE_2__ ui_companion_driver_t ;
struct TYPE_7__ {scalar_t__ desktop_menu_enable; } ;
struct TYPE_9__ {TYPE_1__ bools; } ;
typedef TYPE_3__ settings_t ;
struct TYPE_10__ {int (* notify_refresh ) (int ) ;} ;


 TYPE_3__* configuration_settings ;
 scalar_t__ qt_is_inited ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 TYPE_2__* ui_companion ;
 int ui_companion_data ;
 TYPE_4__ ui_companion_qt ;
 int ui_companion_qt_data ;

void ui_companion_driver_notify_refresh(void)
{
   const ui_companion_driver_t *ui = ui_companion;




   if (!ui)
      return;
   if (ui->notify_refresh)
      ui->notify_refresh(ui_companion_data);





}
