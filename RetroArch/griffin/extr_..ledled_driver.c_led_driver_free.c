
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* free ) () ;} ;


 TYPE_1__* current_led_driver ;
 int stub1 () ;

void led_driver_free(void)
{
   if(current_led_driver)
      (*current_led_driver->free)();
}
