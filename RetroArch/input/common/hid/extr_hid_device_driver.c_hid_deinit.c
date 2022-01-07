
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pad_list; scalar_t__ os_driver_data; TYPE_1__* os_driver; } ;
typedef TYPE_2__ hid_driver_instance_t ;
struct TYPE_5__ {int (* free ) (scalar_t__) ;} ;


 int RARCH_LOG (char*) ;
 int memset (TYPE_2__*,int ,int) ;
 int pad_connection_destroy (int ) ;
 int stub1 (scalar_t__) ;

void hid_deinit(hid_driver_instance_t *instance)
{
   if(!instance)
      return;

   RARCH_LOG("[hid]: destroying instance\n");

   if(instance->os_driver && instance->os_driver_data)
   {
      RARCH_LOG("[hid]: tearing down HID subsystem driver...\n");
      instance->os_driver->free(instance->os_driver_data);
   }

   RARCH_LOG("[hid]: destroying pad data...\n");
   pad_connection_destroy(instance->pad_list);

   RARCH_LOG("[hid]: wiping instance data...\n");
   memset(instance, 0, sizeof(hid_driver_instance_t));
}
