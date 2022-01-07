
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ui_window_t ;
struct TYPE_3__ {int const* window; } ;
typedef TYPE_1__ ui_companion_driver_t ;


 TYPE_1__* ui_companion ;

const ui_window_t *ui_companion_driver_get_window_ptr(void)
{
   const ui_companion_driver_t *ui = ui_companion;
   if (!ui)
      return ((void*)0);
   return ui->window;
}
