
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IOHIDDeviceRef ;
typedef scalar_t__ CFStringRef ;


 int CFSTR (int ) ;
 int CFStringGetCString (scalar_t__,char*,size_t,int ) ;
 int IOHIDDeviceGetProperty (int ,int ) ;
 int kCFStringEncodingUTF8 ;
 int kIOHIDProductKey ;

__attribute__((used)) static void iohidmanager_hid_device_get_product_string(
      IOHIDDeviceRef device, char *buf, size_t len)
{
   CFStringRef ref = (CFStringRef)
      IOHIDDeviceGetProperty(device, CFSTR(kIOHIDProductKey));

   if (ref)
      CFStringGetCString(ref, buf, len, kCFStringEncodingUTF8);
}
