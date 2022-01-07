
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ ppnum_t ;
typedef int pmap_paddr_t ;
typedef scalar_t__ int32_t ;
typedef TYPE_1__* c_slot_mapping_t ;
struct TYPE_5__ {scalar_t__ he_data; } ;
struct TYPE_4__ {scalar_t__ s_cseg; size_t s_cindx; } ;


 int C_KEEP ;
 scalar_t__ C_SV_CSEG_ID ;
 int OSAddAtomic (int,int *) ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 char* PHYSMAP_PTOV (int) ;
 int c_decompress_page (char*,TYPE_1__*,int,int*) ;
 int c_segment_pages_compressed ;
 int c_segment_sv_hash_drop_ref (size_t) ;
 TYPE_2__* c_segment_sv_hash_table ;
 int c_segment_svp_nonzero_decompressions ;
 int c_segment_svp_zero_decompressions ;
 int memset_word (scalar_t__*,scalar_t__,int) ;
 scalar_t__ phystokv (int) ;

int
vm_compressor_get(ppnum_t pn, int *slot, int flags)
{
 c_slot_mapping_t slot_ptr;
 char *dst;
 int zeroslot = 1;
 int retval;


 dst = PHYSMAP_PTOV((uint64_t)pn << (uint64_t)PAGE_SHIFT);





 slot_ptr = (c_slot_mapping_t)slot;

 if (slot_ptr->s_cseg == C_SV_CSEG_ID) {
  int32_t data;
  int32_t *dptr;







  dptr = (int32_t *)(uintptr_t)dst;
  data = c_segment_sv_hash_table[slot_ptr->s_cindx].he_data;

  memset_word(dptr, data, PAGE_SIZE / sizeof(int32_t));
  if ( !(flags & C_KEEP)) {
   c_segment_sv_hash_drop_ref(slot_ptr->s_cindx);

   OSAddAtomic(-1, &c_segment_pages_compressed);
   *slot = 0;
  }
  if (data)
   OSAddAtomic(1, &c_segment_svp_nonzero_decompressions);
  else
   OSAddAtomic(1, &c_segment_svp_zero_decompressions);

  return (0);
 }

 retval = c_decompress_page(dst, slot_ptr, flags, &zeroslot);





 if (zeroslot) {
  *slot = 0;
 }






 return (retval);
}
