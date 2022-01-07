
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int is_keyboard; int is_mouse; int max_packet_size_tx; int max_packet_size_rx; int interface_index; int product_id; int vendor_id; int handle; int * driver; } ;
typedef TYPE_1__ wiiu_attach_event ;
typedef int hid_device_t ;
struct TYPE_7__ {int sub_class; int protocol; int max_packet_size_tx; int max_packet_size_rx; int interface_index; int pid; int vid; int handle; } ;
typedef TYPE_2__ HIDDevice ;


 int RARCH_ERR (char*,int ,int ) ;
 TYPE_1__* alloc_zeroed (int,int) ;
 int * hid_device_driver_lookup (int ,int ) ;

__attribute__((used)) static wiiu_attach_event *new_attach_event(HIDDevice *device)
{
   hid_device_t *driver = hid_device_driver_lookup(device->vid, device->pid);
   if (!driver)
   {
      RARCH_ERR("[hid]: Failed to locate driver for device vid=%04x pid=%04x\n",
        device->vid, device->pid);
      return ((void*)0);
   }
   wiiu_attach_event *event = alloc_zeroed(4, sizeof(wiiu_attach_event));
   if (!event)
      return ((void*)0);

   event->driver = driver;
   event->handle = device->handle;
   event->vendor_id = device->vid;
   event->product_id = device->pid;
   event->interface_index = device->interface_index;
   event->is_keyboard = (device->sub_class == 1
         && device->protocol == 1);
   event->is_mouse = (device->sub_class == 1
         && device->protocol == 2);
   event->max_packet_size_rx = device->max_packet_size_rx;
   event->max_packet_size_tx = device->max_packet_size_tx;

   return event;
}
