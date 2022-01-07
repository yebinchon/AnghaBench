
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int dummy; } ;
struct TYPE_2__ {int (* get_ssids ) (struct string_list*) ;} ;


 int stub1 (struct string_list*) ;
 TYPE_1__* wifi_driver ;

void driver_wifi_get_ssids(struct string_list* ssids)
{
   wifi_driver->get_ssids(ssids);
}
