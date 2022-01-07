
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* tether_start_stop ) (int,char*) ;} ;


 int stub1 (int,char*) ;
 TYPE_1__* wifi_driver ;

void driver_wifi_tether_start_stop(bool start, char* configfile)
{
   wifi_driver->tether_start_stop(start, configfile);
}
