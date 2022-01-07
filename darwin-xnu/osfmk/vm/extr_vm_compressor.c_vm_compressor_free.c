
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* c_slot_mapping_t ;
struct TYPE_3__ {scalar_t__ s_cseg; int s_cindx; } ;


 int C_DONT_BLOCK ;
 scalar_t__ C_SV_CSEG_ID ;
 int OSAddAtomic (int,int *) ;
 int assert (int) ;
 int c_decompress_page (int *,TYPE_1__*,int,int*) ;
 int c_segment_pages_compressed ;
 int c_segment_sv_hash_drop_ref (int ) ;

int
vm_compressor_free(int *slot, int flags)
{
 c_slot_mapping_t slot_ptr;
 int zeroslot = 1;
 int retval;

 assert(flags == 0 || flags == C_DONT_BLOCK);

 slot_ptr = (c_slot_mapping_t)slot;

 if (slot_ptr->s_cseg == C_SV_CSEG_ID) {

  c_segment_sv_hash_drop_ref(slot_ptr->s_cindx);
  OSAddAtomic(-1, &c_segment_pages_compressed);

  *slot = 0;
  return (0);
 }
 retval = c_decompress_page(((void*)0), slot_ptr, flags, &zeroslot);





 if (retval == 0)
  *slot = 0;
 else
  assert(retval == -2);

 return (retval);
}
