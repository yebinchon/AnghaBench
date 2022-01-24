#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wiiusb_hid_t ;
struct TYPE_5__ {scalar_t__ vid; scalar_t__ pid; int /*<<< orphan*/  device_id; } ;
typedef  TYPE_1__ usb_device_entry ;
typedef  unsigned int u8 ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_USERS ; 
 int /*<<< orphan*/  USB_CLASS_HID ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(wiiusb_hid_t *hid)
{
   unsigned i;
   u8 count;
   usb_device_entry *dev_entries = (usb_device_entry *)
      FUNC1(MAX_USERS, sizeof(*dev_entries));

   if (!dev_entries)
      goto error;

   if (FUNC0(dev_entries, MAX_USERS, USB_CLASS_HID, &count) < 0)
      goto error;

   for (i = 0; i < count; i++)
   {
    /* first check the device is not already in our list */
      if (!FUNC4(hid, dev_entries[i].device_id))
         continue;

      if (dev_entries[i].vid > 0 && dev_entries[i].pid > 0)
         FUNC3(hid, &dev_entries[i]);
   }

error:
   if (dev_entries)
      FUNC2(dev_entries);
}