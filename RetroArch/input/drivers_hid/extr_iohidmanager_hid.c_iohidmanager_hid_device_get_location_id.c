
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int IOHIDDeviceRef ;


 int CFSTR (int ) ;
 int iohidmanager_hid_device_get_int_property (int ,int ) ;
 int kIOHIDLocationIDKey ;

__attribute__((used)) static uint32_t iohidmanager_hid_device_get_location_id(IOHIDDeviceRef device)
{
   return iohidmanager_hid_device_get_int_property(device,
         CFSTR(kIOHIDLocationIDKey));
}
