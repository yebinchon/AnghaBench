
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ compressor_slot_t ;


 int C_DONT_BLOCK ;
 int assert (int) ;
 int vm_compressor_free (scalar_t__*,int) ;

unsigned int
compressor_pager_slots_chunk_free(
 compressor_slot_t *chunk,
 int num_slots,
 int flags,
 int *failures)
{
 int i;
 int retval;
 unsigned int num_slots_freed;

 if (failures)
  *failures = 0;
 num_slots_freed = 0;
 for (i = 0; i < num_slots; i++) {
  if (chunk[i] != 0) {
   retval = vm_compressor_free(&chunk[i], flags);

   if (retval == 0)
    num_slots_freed++;
   else {
    if (retval == -2)
     assert(flags & C_DONT_BLOCK);

    if (failures)
     *failures += 1;
   }
  }
 }
 return num_slots_freed;
}
