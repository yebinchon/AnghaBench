
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int addr64_t ;
struct TYPE_2__ {unsigned int cache_linesize; } ;


 int PHYSMAP_PTOV (unsigned int) ;
 int __clflush (int ) ;
 TYPE_1__* cpuid_info () ;
 int mfence () ;

void dcache_incoherent_io_store64(addr64_t pa, unsigned int count)
{
 addr64_t linesize = cpuid_info()->cache_linesize;
 addr64_t bound = (pa + count + linesize - 1) & ~(linesize - 1);

 mfence();

 while (pa < bound) {
  __clflush(PHYSMAP_PTOV(pa));
  pa += linesize;
 }

 mfence();
}
