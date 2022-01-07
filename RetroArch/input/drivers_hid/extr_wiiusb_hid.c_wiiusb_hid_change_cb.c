
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int removal_cb; int device_detected; } ;
typedef TYPE_1__ wiiusb_hid_t ;


 int USB_CLASS_HID ;
 int USB_DeviceChangeNotifyAsync (int ,int (*) (int,void*),void*) ;

__attribute__((used)) static int wiiusb_hid_change_cb(int result, void *usrdata)
{
   wiiusb_hid_t *hid = (wiiusb_hid_t*)usrdata;

   if (!hid)
      return -1;



  if (!hid->removal_cb)
    hid->device_detected = 1;
  else
    hid->removal_cb = 0;


   USB_DeviceChangeNotifyAsync(USB_CLASS_HID, wiiusb_hid_change_cb, usrdata);

   return 0;
}
