
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* event_command ) (int ,int) ;} ;
typedef TYPE_1__ ui_companion_driver_t ;
typedef enum event_command { ____Placeholder_event_command } event_command ;
struct TYPE_5__ {int (* event_command ) (int ,int) ;scalar_t__ toggle; } ;


 scalar_t__ qt_is_inited ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;
 TYPE_1__* ui_companion ;
 int ui_companion_data ;
 TYPE_2__ ui_companion_qt ;
 int ui_companion_qt_data ;

void ui_companion_event_command(enum event_command action)
{
   const ui_companion_driver_t *ui = ui_companion;

   if (ui && ui->event_command)
      ui->event_command(ui_companion_data, action);




}
