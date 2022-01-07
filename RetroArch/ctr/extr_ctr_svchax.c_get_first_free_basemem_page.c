
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s64 ;


 int MEMREGION_BASE ;
 scalar_t__ SYSTEM_VERSION (int,int,int ) ;
 scalar_t__ osGetKernelVersion () ;
 int osGetMemRegionUsed (int ) ;
 int svcGetSystemInfo (int*,int,int ) ;

__attribute__((used)) static u32 get_first_free_basemem_page(bool isNew3DS)
{
   s64 v1;
   int memused_base;
   int memused_base_linear;

   memused_base = osGetMemRegionUsed(MEMREGION_BASE);

   svcGetSystemInfo(&v1, 2, 0);
   memused_base_linear = 0x6C000 + v1 +
                         (osGetKernelVersion() > SYSTEM_VERSION(2, 49, 0) ? (isNew3DS ? 0x2000 : 0x1000) : 0x0);

   return (osGetKernelVersion() > SYSTEM_VERSION(2, 40, 0) ? 0xE0000000 : 0xF0000000)
          + (isNew3DS ? 0x10000000 : 0x08000000)
          - (memused_base - memused_base_linear)
          - 0x1000;

}
