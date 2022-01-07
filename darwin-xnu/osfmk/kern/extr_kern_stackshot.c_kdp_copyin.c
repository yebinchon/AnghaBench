
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int vm_map_t ;
typedef size_t uint64_t ;
typedef size_t uint32_t ;
typedef int boolean_t ;


 int FALSE ;
 size_t MIN (size_t,size_t) ;
 size_t PAGE_MASK ;
 size_t PAGE_SIZE ;
 int bcopy_phys (size_t,size_t,size_t) ;
 scalar_t__ gPanicBase ;
 scalar_t__ gPanicSize ;
 size_t kdp_find_phys (int ,size_t,int,size_t*) ;
 size_t kvtophys (scalar_t__) ;
 scalar_t__ panic_stackshot ;
 scalar_t__ phystokv (size_t) ;
 int stackshot_memcpy (char*,void const*,size_t) ;

boolean_t
kdp_copyin(vm_map_t map, uint64_t uaddr, void *dest, size_t size, boolean_t try_fault, uint32_t *kdp_fault_results)
{
 size_t rem = size;
 char *kvaddr = dest;
 while (rem) {
  uint64_t phys_src = kdp_find_phys(map, uaddr, try_fault, kdp_fault_results);
  uint64_t phys_dest = kvtophys((vm_offset_t)kvaddr);
  uint64_t src_rem = PAGE_SIZE - (phys_src & PAGE_MASK);
  uint64_t dst_rem = PAGE_SIZE - (phys_dest & PAGE_MASK);
  size_t cur_size = (uint32_t) MIN(src_rem, dst_rem);
  cur_size = MIN(cur_size, rem);

  if (phys_src && phys_dest) {
    bcopy_phys(phys_src, phys_dest, cur_size);
  } else {
   break;
  }

  uaddr += cur_size;
  kvaddr += cur_size;
  rem -= cur_size;
 }

 return (rem == 0);
}
