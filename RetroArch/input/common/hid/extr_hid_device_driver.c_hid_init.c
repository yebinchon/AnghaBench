
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int input_device_driver_t ;
struct TYPE_6__ {int (* free ) (int *) ;int * (* init ) () ;} ;
typedef TYPE_1__ hid_driver_t ;
struct TYPE_7__ {int * pad_driver; TYPE_1__* os_driver; int * os_driver_data; } ;
typedef TYPE_2__ hid_driver_instance_t ;


 unsigned int MAX_USERS ;
 int RARCH_LOG (char*,...) ;
 int init_pad_list (TYPE_2__*,unsigned int) ;
 int * stub1 () ;
 int stub2 (int *) ;

bool hid_init(hid_driver_instance_t *instance,
              hid_driver_t *hid_driver,
              input_device_driver_t *pad_driver,
              unsigned slots)
{
   RARCH_LOG("[hid]: initializing instance with %d pad slots\n", slots);
   if(!instance || !hid_driver || !pad_driver || slots > MAX_USERS)
      return 0;

   RARCH_LOG("[hid]: initializing HID subsystem driver...\n");
   instance->os_driver_data = hid_driver->init();
   if(!instance->os_driver_data)
      return 0;

   if(!init_pad_list(instance, slots))
   {
      hid_driver->free(instance->os_driver_data);
      instance->os_driver_data = ((void*)0);
      return 0;
   }

   instance->os_driver = hid_driver;
   instance->pad_driver = pad_driver;

   RARCH_LOG("[hid]: instance initialization complete.\n");

   return 1;
}
