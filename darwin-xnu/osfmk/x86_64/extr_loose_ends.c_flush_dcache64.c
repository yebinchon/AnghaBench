
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint64_t ;
typedef unsigned int addr64_t ;
struct TYPE_2__ {unsigned int cache_linesize; } ;


 int __clflush (void*) ;
 TYPE_1__* cpuid_info () ;
 int dcache_incoherent_io_flush64 (unsigned int,unsigned int) ;
 int mfence () ;

void
flush_dcache64(addr64_t addr, unsigned count, int phys)
{
 if (phys) {
  dcache_incoherent_io_flush64(addr, count);
 }
 else {
  uint64_t linesize = cpuid_info()->cache_linesize;
  addr64_t bound = (addr + count + linesize -1) & ~(linesize - 1);
  mfence();
  while (addr < bound) {
   __clflush((void *) (uintptr_t) addr);
   addr += linesize;
  }
  mfence();
 }
}
