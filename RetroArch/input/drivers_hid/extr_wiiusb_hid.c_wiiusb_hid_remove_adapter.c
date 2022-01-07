
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wiiusb_adapter {scalar_t__ handle; } ;


 int USB_CloseDevice (scalar_t__*) ;
 int wiiusb_hid_release_adapter (struct wiiusb_adapter*) ;

__attribute__((used)) static int wiiusb_hid_remove_adapter(struct wiiusb_adapter *adapter)
{
   if (!adapter)
      return -1;

   if (adapter->handle > 0)
      USB_CloseDevice(&adapter->handle);

   wiiusb_hid_release_adapter(adapter);

   return 0;
}
