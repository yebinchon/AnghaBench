
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int IOHIDDeviceRef ;
typedef int CFStringRef ;
typedef scalar_t__ CFNumberRef ;


 scalar_t__ CFGetTypeID (scalar_t__) ;
 scalar_t__ CFNumberGetTypeID () ;
 int CFNumberGetValue (scalar_t__,int ,int *) ;
 scalar_t__ IOHIDDeviceGetProperty (int ,int ) ;
 int kCFNumberIntType ;

__attribute__((used)) static int32_t iohidmanager_hid_device_get_int_property(
      IOHIDDeviceRef device, CFStringRef key)
{
   CFNumberRef ref = (CFNumberRef)IOHIDDeviceGetProperty(device, key);

   if (ref && (CFGetTypeID(ref) == CFNumberGetTypeID()))
   {
      int32_t value = 0;
      CFNumberGetValue((CFNumberRef)ref, kCFNumberIntType, &value);
      return value;
   }

   return 0;
}
