
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int CFNumberRef ;
typedef int CFMutableDictionaryRef ;
typedef int CFMutableArrayRef ;


 int CFArrayAppendValue (int ,int ) ;
 int CFDictionaryCreateMutable (int ,int ,int *,int *) ;
 int CFDictionarySetValue (int ,int ,int ) ;
 int CFNumberCreate (int ,int ,int *) ;
 int CFRelease (int ) ;
 int CFSTR (int ) ;
 int kCFAllocatorDefault ;
 int kCFNumberIntType ;
 int kCFTypeDictionaryKeyCallBacks ;
 int kCFTypeDictionaryValueCallBacks ;
 int kIOHIDDeviceUsageKey ;
 int kIOHIDDeviceUsagePageKey ;

__attribute__((used)) static void iohidmanager_hid_append_matching_dictionary(
      CFMutableArrayRef array,
      uint32_t page, uint32_t use)
{
   CFMutableDictionaryRef matcher = CFDictionaryCreateMutable(
         kCFAllocatorDefault, 0,
         &kCFTypeDictionaryKeyCallBacks,
         &kCFTypeDictionaryValueCallBacks);
   CFNumberRef pagen = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &page);
   CFNumberRef usen = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &use);

   CFDictionarySetValue(matcher, CFSTR(kIOHIDDeviceUsagePageKey), pagen);
   CFDictionarySetValue(matcher, CFSTR(kIOHIDDeviceUsageKey), usen);
   CFArrayAppendValue(array, matcher);

   CFRelease(pagen);
   CFRelease(usen);
   CFRelease(matcher);
}
