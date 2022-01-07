
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* browser_window; } ;
typedef TYPE_1__ ui_companion_driver_t ;
typedef int ui_browser_window_t ;


 TYPE_1__* ui_companion ;

const ui_browser_window_t *ui_companion_driver_get_browser_window_ptr(void)
{
   const ui_companion_driver_t *ui = ui_companion;
   if (!ui)
      return ((void*)0);
   return ui->browser_window;
}
