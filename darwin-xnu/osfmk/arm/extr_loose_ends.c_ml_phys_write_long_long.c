
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
 int VM_PROT_WRITE ;
 int cpu_number () ;
 int mp_disable_preemption () ;
 int mp_enable_preemption () ;
 unsigned int pmap_cache_attributes (int) ;
 int pmap_cpu_windows_copy_addr (int ,unsigned int) ;
 unsigned int pmap_map_cpu_windows_copy (int,int,unsigned int) ;
 int pmap_unmap_cpu_windows_copy (unsigned int) ;

__attribute__((used)) static void
ml_phys_write_long_long(pmap_paddr_t paddr, unsigned long long data)
{
 unsigned int index;
 unsigned int wimg_bits;
 ppnum_t pn = (paddr >> PAGE_SHIFT);

 mp_disable_preemption();
 wimg_bits = pmap_cache_attributes(pn);
 index = pmap_map_cpu_windows_copy(pn, VM_PROT_READ|VM_PROT_WRITE, wimg_bits);

 *(volatile unsigned long long *)(pmap_cpu_windows_copy_addr(cpu_number(), index)
                         | ((uint32_t)paddr & PAGE_MASK)) = data;

 pmap_unmap_cpu_windows_copy(index);
 mp_enable_preemption();
}
