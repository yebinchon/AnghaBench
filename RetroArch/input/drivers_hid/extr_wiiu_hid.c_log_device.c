
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int max_packet_size_tx; int max_packet_size_rx; int protocol; int sub_class; int interface_index; int pid; int vid; int physical_device_inst; int handle; } ;
typedef TYPE_1__ HIDDevice ;


 int RARCH_LOG (char*,...) ;

__attribute__((used)) static void log_device(HIDDevice *device)
{
   if (!device)
   {
      RARCH_LOG("NULL device.\n");
   }

   RARCH_LOG("                handle: %d\n", device->handle);
   RARCH_LOG("  physical_device_inst: %d\n", device->physical_device_inst);
   RARCH_LOG("                   vid: 0x%x\n", device->vid);
   RARCH_LOG("                   pid: 0x%x\n", device->pid);
   RARCH_LOG("       interface_index: %d\n", device->interface_index);
   RARCH_LOG("             sub_class: %d\n", device->sub_class);
   RARCH_LOG("              protocol: %d\n", device->protocol);
   RARCH_LOG("    max_packet_size_rx: %d\n", device->max_packet_size_rx);
   RARCH_LOG("    max_packet_size_tx: %d\n", device->max_packet_size_tx);
}
