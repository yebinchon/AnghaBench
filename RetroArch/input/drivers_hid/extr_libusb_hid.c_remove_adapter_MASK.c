#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct libusb_hid {int /*<<< orphan*/ * slots; } ;
struct libusb_device {int dummy; } ;
struct libusb_adapter {size_t slot; int quitting; struct libusb_adapter* next; int /*<<< orphan*/  handle; int /*<<< orphan*/  interface_number; int /*<<< orphan*/  send_control_buffer; int /*<<< orphan*/  send_control_lock; int /*<<< orphan*/  thread; scalar_t__ name; struct libusb_device* device; } ;

/* Variables and functions */
 int /*<<< orphan*/  adapters ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct libusb_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (size_t,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(void *data, struct libusb_device *dev)
{
   struct libusb_adapter  *adapter = (struct libusb_adapter*)&adapters;
   struct libusb_hid          *hid = (struct libusb_hid*)data;

   while (adapter->next == NULL)
      return -1;

   if (adapter->next->device == dev)
   {
      struct libusb_adapter *new_next = NULL;
      const char                *name = (const char*)adapter->next->name;

      FUNC2(adapter->slot, name);

      adapter->next->quitting = true;
      FUNC7(adapter->next->thread);

      FUNC5(&hid->slots[adapter->slot], adapter->slot);

      FUNC6(adapter->send_control_lock);
      FUNC0(adapter->send_control_buffer);

      FUNC4(adapter->next->handle,
            adapter->next->interface_number);
      FUNC3(adapter->next->handle);

      new_next = adapter->next->next;
      FUNC1(adapter->next);
      adapter->next = new_next;

      return 0;
   }

   return -1;
}