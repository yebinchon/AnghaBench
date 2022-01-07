
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_1__ wiiu_attach_event ;
typedef scalar_t__ uint32_t ;
typedef int int32_t ;
typedef int HIDDevice ;
typedef int HIDClient ;


 int DEVICE_UNUSED ;
 int DEVICE_USED ;
 int RARCH_LOG (char*) ;
 int delete_attach_event (TYPE_1__*) ;
 int log_device (int *) ;
 TYPE_1__* new_attach_event (int *) ;
 int synchronized_add_event (TYPE_1__*) ;

__attribute__((used)) static int32_t wiiu_attach_callback(HIDClient *client,
      HIDDevice *device, uint32_t attach)
{
   wiiu_attach_event *event = ((void*)0);

   if (attach)
   {
      RARCH_LOG("[hid]: Device attach event generated.\n");
      log_device(device);
   }
   else
   {
      RARCH_LOG("[hid]: Device detach event generated.\n");
   }

   if (device)
      event = new_attach_event(device);

   if (!event)
      goto error;

   event->type = attach;
   synchronized_add_event(event);

   return DEVICE_USED;

error:
   delete_attach_event(event);
   return DEVICE_UNUSED;
}
