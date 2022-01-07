
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* deinit ) (int *) ;} ;
typedef TYPE_1__ ui_companion_driver_t ;
struct TYPE_5__ {int (* deinit ) (int *) ;} ;


 scalar_t__ qt_is_inited ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 TYPE_1__* ui_companion ;
 int * ui_companion_data ;
 TYPE_2__ ui_companion_qt ;
 int * ui_companion_qt_data ;

__attribute__((used)) static void ui_companion_driver_deinit(void)
{
   const ui_companion_driver_t *ui = ui_companion;

   if (!ui)
      return;
   if (ui->deinit)
      ui->deinit(ui_companion_data);
   ui_companion_data = ((void*)0);
}
