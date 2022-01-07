
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* ident; } ;
typedef TYPE_1__ ui_companion_driver_t ;


 TYPE_1__* ui_companion ;

const char *ui_companion_driver_get_ident(void)
{
   const ui_companion_driver_t *ui = ui_companion;
   if (!ui)
      return "null";
   return ui->ident;
}
