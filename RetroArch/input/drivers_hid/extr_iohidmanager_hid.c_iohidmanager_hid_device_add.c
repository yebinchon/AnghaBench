
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iohidmanager_hid_t ;
typedef int IOReturn ;
typedef int IOHIDDeviceRef ;


 scalar_t__ hid_driver_get_data () ;
 int iohidmanager_hid_device_add_device (int ,int *) ;

__attribute__((used)) static void iohidmanager_hid_device_add(void *data, IOReturn result,
   void* sender, IOHIDDeviceRef device)
{
 iohidmanager_hid_t *hid = (iohidmanager_hid_t*) hid_driver_get_data();
 iohidmanager_hid_device_add_device(device, hid);
}
