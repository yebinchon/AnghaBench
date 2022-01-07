
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int SYSMEM1_SIZE ;
 scalar_t__ gx_mem2_total () ;

__attribute__((used)) static uint64_t frontend_gx_get_mem_total(void)
{
   uint64_t total = SYSMEM1_SIZE;



   return total;
}
