
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ppnum_t ;
struct TYPE_4__ {int cache_linesize; } ;
typedef TYPE_1__ i386_cpu_info_t ;
typedef int boolean_t ;


 int FALSE ;
 int PAGE_SIZE ;
 scalar_t__ PHYSMAP_PTOV (int ) ;
 int __clflush (void*) ;
 TYPE_1__* cpuid_info () ;
 int i386_ptob (int ) ;
 int mfence () ;
 int ml_set_interrupts_enabled (int ) ;
 int panic (char*,TYPE_1__*) ;

void
cache_flush_page_phys(ppnum_t pa)
{
 boolean_t istate;
 unsigned char *cacheline_addr;
 i386_cpu_info_t *cpuid_infop = cpuid_info();
 int cacheline_size;
 int cachelines_to_flush;

 cacheline_size = cpuid_infop->cache_linesize;
 if (cacheline_size == 0)
  panic("cacheline_size=0 cpuid_infop=%p\n", cpuid_infop);
 cachelines_to_flush = PAGE_SIZE/cacheline_size;

 mfence();

 istate = ml_set_interrupts_enabled(FALSE);

 for (cacheline_addr = (unsigned char *)PHYSMAP_PTOV(i386_ptob(pa));
      cachelines_to_flush > 0;
      cachelines_to_flush--, cacheline_addr += cacheline_size) {
  __clflush((void *) cacheline_addr);
 }

 (void) ml_set_interrupts_enabled(istate);

 mfence();
}
