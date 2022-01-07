
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* led_driver; } ;
struct TYPE_10__ {TYPE_1__ arrays; } ;
typedef TYPE_2__ settings_t ;
struct TYPE_11__ {int (* init ) () ;} ;


 int RARCH_LOG (char*,char*,TYPE_3__*) ;
 TYPE_2__* config_get_ptr () ;
 TYPE_3__* current_led_driver ;
 TYPE_3__ null_led_driver ;
 TYPE_3__ overlay_led_driver ;
 TYPE_3__ rpi_led_driver ;
 scalar_t__ string_is_equal (char*,char*) ;
 int stub1 () ;

bool led_driver_init(void)
{
   settings_t *settings = config_get_ptr();
   char *drivername = settings ? settings->arrays.led_driver : ((void*)0);

   if(!drivername)
      drivername = (char*)"null";

   current_led_driver = &null_led_driver;
   RARCH_LOG("[LED]: LED driver = '%s' %p\n",
         drivername, current_led_driver);

   if(current_led_driver)
      (*current_led_driver->init)();

   return 1;
}
