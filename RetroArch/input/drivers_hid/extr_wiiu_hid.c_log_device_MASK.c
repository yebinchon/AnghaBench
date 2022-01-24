#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  max_packet_size_tx; int /*<<< orphan*/  max_packet_size_rx; int /*<<< orphan*/  protocol; int /*<<< orphan*/  sub_class; int /*<<< orphan*/  interface_index; int /*<<< orphan*/  pid; int /*<<< orphan*/  vid; int /*<<< orphan*/  physical_device_inst; int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ HIDDevice ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(HIDDevice *device)
{
   if (!device)
   {
      FUNC0("NULL device.\n");
   }

   FUNC0("                handle: %d\n", device->handle);
   FUNC0("  physical_device_inst: %d\n", device->physical_device_inst);
   FUNC0("                   vid: 0x%x\n", device->vid);
   FUNC0("                   pid: 0x%x\n", device->pid);
   FUNC0("       interface_index: %d\n", device->interface_index);
   FUNC0("             sub_class: %d\n", device->sub_class);
   FUNC0("              protocol: %d\n", device->protocol);
   FUNC0("    max_packet_size_rx: %d\n", device->max_packet_size_rx);
   FUNC0("    max_packet_size_tx: %d\n", device->max_packet_size_tx);
}