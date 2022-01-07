
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ ppnum_t ;
typedef int pmap_paddr_t ;
typedef int c_slot_mapping_t ;
typedef int c_segment_t ;


 int PAGE_SHIFT ;
 char* PHYSMAP_PTOV (int) ;
 int c_compress_page (char*,int ,int *,char*) ;
 scalar_t__ phystokv (int) ;

int
vm_compressor_put(ppnum_t pn, int *slot, void **current_chead, char *scratch_buf)
{
 char *src;
 int retval;


 src = PHYSMAP_PTOV((uint64_t)pn << (uint64_t)PAGE_SHIFT);






 retval = c_compress_page(src, (c_slot_mapping_t)slot, (c_segment_t *)current_chead, scratch_buf);

 return (retval);
}
