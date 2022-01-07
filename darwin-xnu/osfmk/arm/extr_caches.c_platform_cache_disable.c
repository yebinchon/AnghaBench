
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int SCTLR_DCACHE ;

void
platform_cache_disable(void)
{

 uint32_t sctlr_value = 0;


 __asm__ volatile("mrc p15, 0, %0, c1, c0, 0"
                  : "=r"(sctlr_value));

 sctlr_value &= ~SCTLR_DCACHE;

 __asm__ volatile("mcr p15, 0, %0, c1, c0, 0\n"
                  "isb"
                  :: "r"(sctlr_value));

}
