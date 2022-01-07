
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* connect_ssid ) (unsigned int,char const*) ;} ;


 int stub1 (unsigned int,char const*) ;
 TYPE_1__* wifi_driver ;

bool driver_wifi_connect_ssid(unsigned i, const char* passphrase)
{
   return wifi_driver->connect_ssid(i, passphrase);
}
