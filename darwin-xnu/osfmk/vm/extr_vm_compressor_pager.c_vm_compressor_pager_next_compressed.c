
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int memory_object_t ;
typedef int memory_object_offset_t ;
typedef scalar_t__ compressor_slot_t ;
typedef TYPE_2__* compressor_pager_t ;
struct TYPE_4__ {scalar_t__* cpgr_eslots; scalar_t__** cpgr_islots; scalar_t__* cpgr_dslots; } ;
struct TYPE_5__ {int cpgr_num_slots; TYPE_1__ cpgr_slots; } ;


 int COMPRESSOR_SLOTS_PER_CHUNK ;
 int PAGE_SIZE ;
 int compressor_pager_lookup (int ,TYPE_2__*) ;

memory_object_offset_t
vm_compressor_pager_next_compressed(
 memory_object_t mem_obj,
 memory_object_offset_t offset)
{
 compressor_pager_t pager;
 uint32_t num_chunks;
 uint32_t page_num;
 uint32_t chunk_idx;
 uint32_t slot_idx;
 compressor_slot_t *chunk;

 compressor_pager_lookup(mem_obj, pager);

 page_num = (uint32_t)(offset / PAGE_SIZE);
 if (page_num != (offset/PAGE_SIZE)) {

  return (memory_object_offset_t) -1;
 }
 if (page_num >= pager->cpgr_num_slots) {

  return (memory_object_offset_t) -1;
 }

 num_chunks = ((pager->cpgr_num_slots + COMPRESSOR_SLOTS_PER_CHUNK - 1) /
        COMPRESSOR_SLOTS_PER_CHUNK);

 if (num_chunks == 1) {
  if (pager->cpgr_num_slots > 2) {
   chunk = pager->cpgr_slots.cpgr_dslots;
  } else {
   chunk = &pager->cpgr_slots.cpgr_eslots[0];
  }
  for (slot_idx = page_num;
       slot_idx < pager->cpgr_num_slots;
       slot_idx++) {
   if (chunk[slot_idx] != 0) {

    return (memory_object_offset_t) (slot_idx *
         PAGE_SIZE);
   }
  }
  return (memory_object_offset_t) -1;
 }


 chunk = ((void*)0);
 for (chunk_idx = page_num / COMPRESSOR_SLOTS_PER_CHUNK,
       slot_idx = page_num % COMPRESSOR_SLOTS_PER_CHUNK;
      chunk_idx < num_chunks;
      chunk_idx++,
       slot_idx = 0) {
  chunk = pager->cpgr_slots.cpgr_islots[chunk_idx];
  if (chunk == ((void*)0)) {

   continue;
  }

  for (;
       slot_idx < COMPRESSOR_SLOTS_PER_CHUNK;
       slot_idx++) {
   if (chunk[slot_idx] != 0) {

    uint32_t next_slot;

    next_slot = ((chunk_idx *
           COMPRESSOR_SLOTS_PER_CHUNK) +
          slot_idx);
    if (next_slot >= pager->cpgr_num_slots) {

     return (memory_object_offset_t) -1;
    }
    return (memory_object_offset_t) (next_slot *
         PAGE_SIZE);
   }
  }
 }
 return (memory_object_offset_t) -1;
}
