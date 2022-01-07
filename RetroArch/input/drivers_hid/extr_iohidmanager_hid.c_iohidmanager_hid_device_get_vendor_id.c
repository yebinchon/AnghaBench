
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int IOHIDDeviceRef ;


 int CFSTR (int ) ;
 int iohidmanager_hid_device_get_int_property (int ,int ) ;
 int kIOHIDVendorIDKey ;

__attribute__((used)) static uint16_t iohidmanager_hid_device_get_vendor_id(IOHIDDeviceRef device)
{
   return iohidmanager_hid_device_get_int_property(device,
         CFSTR(kIOHIDVendorIDKey));
}
