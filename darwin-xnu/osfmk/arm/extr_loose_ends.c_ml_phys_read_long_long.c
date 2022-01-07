
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ppnum_t ;
typedef int pmap_paddr_t ;


 int PAGE_MASK ;
 int PAGE_SHIFT ;
 int VM_PROT_READ ;
 int cpu_number () ;
 int mp_disable_preemption () ;
 int mp_enable_preemption () ;
 unsigned int pmap_cache_attributes (int) ;
 int pmap_cpu_windows_copy_addr (int ,unsigned int) ;
 unsigned int pmap_map_cpu_windows_copy (int,int ,unsigned int) ;
 int pmap_unmap_cpu_windows_copy (unsigned int) ;

__attribute__((used)) static unsigned long long
ml_phys_read_long_long(pmap_paddr_t paddr)
{
 unsigned int index;
 unsigned int result;
 unsigned int wimg_bits;
 ppnum_t pn = (paddr >> PAGE_SHIFT);

 mp_disable_preemption();
 wimg_bits = pmap_cache_attributes(pn);
 index = pmap_map_cpu_windows_copy(pn, VM_PROT_READ, wimg_bits);

 result = *(volatile unsigned long long *)(pmap_cpu_windows_copy_addr(cpu_number(), index)
                           | ((uint32_t)paddr & PAGE_MASK));

 pmap_unmap_cpu_windows_copy(index);
 mp_enable_preemption();

 return result;
}
