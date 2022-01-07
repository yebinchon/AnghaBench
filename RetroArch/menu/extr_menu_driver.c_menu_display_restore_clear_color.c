
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* restore_clear_color ) () ;} ;


 TYPE_1__* menu_disp ;
 int stub1 () ;

bool menu_display_restore_clear_color(void)
{
   if (!menu_disp || !menu_disp->restore_clear_color)
      return 0;
   menu_disp->restore_clear_color();
   return 1;
}
