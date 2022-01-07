
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int IOHIDElementRef ;
typedef int CFComparisonResult ;


 int IOHIDElementGetCookie (int ) ;
 int IOHIDElementGetUsage (int ) ;
 int IOHIDElementGetUsagePage (int ) ;

CFComparisonResult iohidmanager_sort_elements(const void *val1, const void *val2, void *context)
{
   uint32_t page1 = (uint32_t)IOHIDElementGetUsagePage((IOHIDElementRef)val1);
   uint32_t page2 = (uint32_t)IOHIDElementGetUsagePage((IOHIDElementRef)val2);
   uint32_t use1 = (uint32_t)IOHIDElementGetUsage((IOHIDElementRef)val1);
   uint32_t use2 = (uint32_t)IOHIDElementGetUsage((IOHIDElementRef)val2);
   uint32_t cookie1 = (uint32_t)IOHIDElementGetCookie((IOHIDElementRef)val1);
   uint32_t cookie2 = (uint32_t)IOHIDElementGetCookie((IOHIDElementRef)val2);

   if (page1 != page2)
      return (CFComparisonResult)(page1 > page2);

   if (use1 != use2)
       return (CFComparisonResult)(use1 > use2);

   return (CFComparisonResult)(cookie1 > cookie2);
}
