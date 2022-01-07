
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int input_device_driver_t ;
struct TYPE_2__ {int (* connected ) (unsigned int,int *) ;} ;


 TYPE_1__* pad_connection_listener ;
 int stub1 (unsigned int,int *) ;

void fire_connection_listener(unsigned port, input_device_driver_t *driver)
{
   if (!pad_connection_listener)
      return;

   pad_connection_listener->connected(port, driver);
}
