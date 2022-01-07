
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ SYSMEM1_SIZE ;
 scalar_t__ SYS_GetArena1Size () ;
 scalar_t__ gx_mem2_total () ;
 scalar_t__ gx_mem2_used () ;

__attribute__((used)) static uint64_t frontend_gx_get_mem_free(void)
{
   uint64_t total = SYSMEM1_SIZE - (SYSMEM1_SIZE - SYS_GetArena1Size());



   return total;
}
