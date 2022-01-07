
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int addr64_t ;


 int PAGE_MASK ;
 int PAGE_SIZE ;
 int bcopy_phys (int,int,int) ;
 int kvtophys (int) ;
 int pmap_valid_address (int ) ;
 int trunc_page_64 (int) ;

vm_size_t
ml_nofault_copy(vm_offset_t virtsrc, vm_offset_t virtdst, vm_size_t size)
{
 addr64_t cur_phys_dst, cur_phys_src;
 vm_size_t count, nbytes = 0;

 while (size > 0) {
  if (!(cur_phys_src = kvtophys(virtsrc)))
   break;
  if (!(cur_phys_dst = kvtophys(virtdst)))
   break;
  if (!pmap_valid_address(trunc_page_64(cur_phys_dst)) ||
      !pmap_valid_address(trunc_page_64(cur_phys_src)))
   break;
  count = PAGE_SIZE - (cur_phys_src & PAGE_MASK);
  if (count > (PAGE_SIZE - (cur_phys_dst & PAGE_MASK)))
   count = PAGE_SIZE - (cur_phys_dst & PAGE_MASK);
  if (count > size)
   count = size;

  bcopy_phys(cur_phys_src, cur_phys_dst, count);

  nbytes += count;
  virtsrc += count;
  virtdst += count;
  size -= count;
 }

 return nbytes;
}
