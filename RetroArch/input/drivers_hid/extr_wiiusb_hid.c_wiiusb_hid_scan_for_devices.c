
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int wiiusb_hid_t ;
struct TYPE_5__ {scalar_t__ vid; scalar_t__ pid; int device_id; } ;
typedef TYPE_1__ usb_device_entry ;
typedef unsigned int u8 ;


 int MAX_USERS ;
 int USB_CLASS_HID ;
 scalar_t__ USB_GetDeviceList (TYPE_1__*,int ,int ,unsigned int*) ;
 scalar_t__ calloc (int ,int) ;
 int free (TYPE_1__*) ;
 int wiiusb_hid_add_adapter (int *,TYPE_1__*) ;
 int wiiusb_hid_new_device (int *,int ) ;

__attribute__((used)) static void wiiusb_hid_scan_for_devices(wiiusb_hid_t *hid)
{
   unsigned i;
   u8 count;
   usb_device_entry *dev_entries = (usb_device_entry *)
      calloc(MAX_USERS, sizeof(*dev_entries));

   if (!dev_entries)
      goto error;

   if (USB_GetDeviceList(dev_entries, MAX_USERS, USB_CLASS_HID, &count) < 0)
      goto error;

   for (i = 0; i < count; i++)
   {

      if (!wiiusb_hid_new_device(hid, dev_entries[i].device_id))
         continue;

      if (dev_entries[i].vid > 0 && dev_entries[i].pid > 0)
         wiiusb_hid_add_adapter(hid, &dev_entries[i]);
   }

error:
   if (dev_entries)
      free(dev_entries);
}
