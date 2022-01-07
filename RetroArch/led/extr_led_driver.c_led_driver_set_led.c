
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* set_led ) (int,int) ;} ;


 TYPE_1__* current_led_driver ;
 int stub1 (int,int) ;

void led_driver_set_led(int led, int value)
{
   if(current_led_driver)
      (*current_led_driver->set_led)(led, value);
}
