
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FlushPoU_Dcache () ;
 int InvalidatePoU_Icache () ;

void dtrace_flush_caches(void)
{



 FlushPoU_Dcache();
 InvalidatePoU_Icache();
}
