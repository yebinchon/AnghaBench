
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef size_t uint64_t ;
typedef size_t uint32_t ;
typedef scalar_t__ ppnum_t ;
typedef int pmap_t ;
typedef int boolean_t ;


 size_t MIN (size_t,size_t) ;
 size_t PAGE_MASK ;
 size_t PAGE_SIZE ;
 int bcopy_phys (size_t,size_t,size_t) ;
 size_t kvtophys (int ) ;
 scalar_t__ pmap_find_phys (int ,size_t) ;
 scalar_t__ pmap_valid_page (scalar_t__) ;
 size_t ptoa_64 (scalar_t__) ;

__attribute__((used)) static boolean_t
debug_copyin(pmap_t p, uint64_t uaddr, void *dest, size_t size)
{
        size_t rem = size;
        char *kvaddr = dest;

        while (rem) {
                ppnum_t upn = pmap_find_phys(p, uaddr);
                uint64_t phys_src = ptoa_64(upn) | (uaddr & PAGE_MASK);
                uint64_t phys_dest = kvtophys((vm_offset_t)kvaddr);
                uint64_t src_rem = PAGE_SIZE - (phys_src & PAGE_MASK);
                uint64_t dst_rem = PAGE_SIZE - (phys_dest & PAGE_MASK);
                size_t cur_size = (uint32_t) MIN(src_rem, dst_rem);
                cur_size = MIN(cur_size, rem);

                if (upn && pmap_valid_page(upn) && phys_dest) {
                        bcopy_phys(phys_src, phys_dest, cur_size);
                }
                else
                        break;
                uaddr += cur_size;
                kvaddr += cur_size;
                rem -= cur_size;
        }
        return (rem == 0);
}
