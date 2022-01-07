
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ui_companion_toggle; scalar_t__ desktop_menu_enable; } ;
struct TYPE_7__ {TYPE_1__ bools; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_9__ {int (* toggle ) (int ,int) ;} ;
struct TYPE_8__ {int (* toggle ) (int ,int) ;int (* init ) () ;} ;


 TYPE_2__* configuration_settings ;
 int qt_is_inited ;
 int stub1 (int ,int) ;
 int stub2 () ;
 int stub3 (int ,int) ;
 TYPE_4__* ui_companion ;
 int ui_companion_data ;
 TYPE_3__ ui_companion_qt ;
 int ui_companion_qt_data ;

void ui_companion_driver_toggle(bool force)
{




   if (ui_companion && ui_companion->toggle)
      ui_companion->toggle(ui_companion_data, 0);
}
