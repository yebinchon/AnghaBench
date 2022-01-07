
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ s64 ;


 int svcGetSystemInfo (scalar_t__*,int ,int) ;

u32 ctr_get_free_space(void)
{
   s64 mem_used;
   u32 app_memory = *((u32*)0x1FF80040);
   svcGetSystemInfo(&mem_used, 0, 1);
   return app_memory - (u32)mem_used;
}
