#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  connections; struct wiiusb_adapter* adapters_head; } ;
typedef  TYPE_1__ wiiusb_hid_t ;
struct TYPE_15__ {int /*<<< orphan*/  device_id; int /*<<< orphan*/  pid; int /*<<< orphan*/  vid; } ;
typedef  TYPE_2__ usb_device_entry ;
struct TYPE_16__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
typedef  TYPE_3__ usb_devdesc ;
struct wiiusb_adapter {scalar_t__ endpoint_in; int slot; int /*<<< orphan*/  handle; struct wiiusb_adapter* send_control_buffer; int /*<<< orphan*/  device_id; struct wiiusb_adapter* next; TYPE_1__* hid; void* data; int /*<<< orphan*/  send_control_type; } ;
typedef  int int32_t ;
struct TYPE_17__ {int /*<<< orphan*/  ident; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wiiusb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WIIUSB_SC_NONE ; 
 scalar_t__ FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct wiiusb_adapter*) ; 
 scalar_t__ FUNC9 (TYPE_3__) ; 
 scalar_t__ FUNC10 (TYPE_3__) ; 
 void* FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 void* FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wiiusb_adapter*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,struct wiiusb_adapter*,TYPE_3__*) ; 
 TYPE_6__ wiiusb_hid ; 
 int /*<<< orphan*/  FUNC15 (int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC16 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  wiiusb_hid_removal_cb ; 

__attribute__((used)) static int FUNC17(void *data, usb_device_entry *dev)
{
   usb_devdesc desc;
   const char        *device_name = NULL;
   wiiusb_hid_t              *hid = (wiiusb_hid_t*)data;
   struct wiiusb_adapter *adapter = (struct wiiusb_adapter*)
      FUNC7(1, sizeof(struct wiiusb_adapter));
   int i;
   int32_t slot1;

   if (!adapter)
      return -1;

   if (!hid)
   {
      FUNC8(adapter);
      FUNC0("Allocation of adapter failed.\n");
      return -1;
   }

   if (FUNC6(dev->device_id, dev->vid, dev->pid, &adapter->handle) < 0)
   {
      FUNC0("Error opening device 0x%p (VID/PID: %04x:%04x).\n",
           dev->device_id, dev->vid, dev->pid);
      FUNC8(adapter);
      return -1;
   }

   adapter->device_id = dev->device_id;

   FUNC5(adapter->handle, &desc);

   if (FUNC10(desc))
   {
       FUNC1("Retrode SNES mouse found (currently not supported)\n");
       goto error;
   }

   FUNC14(dev, adapter, &desc);

   if (adapter->endpoint_in == 0)
   {
      FUNC0("Could not find HID config for device.\n");
      goto error;
   }

   /* Allocate mem for the send control buffer, 32bit aligned */
   adapter->send_control_type   = WIIUSB_SC_NONE;
   adapter->send_control_buffer = FUNC11(32, 128);

   if (!adapter->send_control_buffer)
   {
      FUNC0("Error creating send control buffer.\n");
      goto error;
   }

   /* Sent the pad name as dummy, we don't know the
    * control name until we get its interface */
   adapter->slot = FUNC13(hid->connections,
         "hid", desc.idVendor, desc.idProduct,
         adapter, &wiiusb_hid);

   if (adapter->slot == -1)
      goto error;

   if (!FUNC12(hid->connections, adapter->slot))
   {
      FUNC0(" Interface not found.\n");
      goto error;
   }

   adapter->data      = FUNC11(32, 128);
   adapter->hid       = hid;
   adapter->next      = hid->adapters_head;
   hid->adapters_head = adapter;

   /*  Get the name from the interface */
   device_name = FUNC16(hid, adapter->slot);

   FUNC1("Interface found: [%s].\n", device_name);

   FUNC1("Device 0x%p attached (VID/PID: %04x:%04x).\n",
         adapter->device_id, desc.idVendor, desc.idProduct);

   if (FUNC9(desc))
   {
       /* Retrode port #1 */
       FUNC1("Interface Retrode1 gamepad slot: %d\n", adapter->slot);
       FUNC15(adapter->slot, device_name, wiiusb_hid.ident, desc.idVendor, desc.idProduct);
       /* Retrode port #2, #3, #4 */
       for (i = 2; i <= 4; i++)
       {
           slot1 = FUNC13(hid->connections, "hid", desc.idVendor, desc.idProduct, adapter, &wiiusb_hid);
           if (slot1 == -1)
               FUNC1("No slot free for Retrode%d gamepad\n", i);
           else
           {
               FUNC1("Interface Retrode%d gamepad slot: %d\n", i, slot1);
               FUNC15(slot1, device_name, wiiusb_hid.ident, desc.idVendor, desc.idProduct);
           }
       }
   }
   else
       FUNC15(adapter->slot,
             device_name, wiiusb_hid.ident, desc.idVendor, desc.idProduct);

   FUNC4(&desc);
   FUNC3(adapter->handle, wiiusb_hid_removal_cb, adapter);

   return 0;

error:
   if (adapter->send_control_buffer)
      FUNC8(adapter->send_control_buffer);
   if (adapter)
      FUNC8(adapter);
   FUNC4(&desc);
   FUNC2(&adapter->handle);
   return -1;
}