
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef size_t uint32_t ;
typedef int int32_t ;
typedef TYPE_2__* c_slot_t ;
typedef TYPE_3__* c_slot_mapping_t ;
typedef TYPE_4__* c_segment_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_19__ {int * c_buffer; } ;
struct TYPE_22__ {scalar_t__ c_bytes_used; int c_firstemptyslot; int c_nextslot; size_t c_populated_offset; size_t c_nextoffset; int c_lock; TYPE_1__ c_store; scalar_t__ c_bytes_unused; int c_was_minor_compacted; int c_busy; } ;
struct TYPE_21__ {int s_cindx; } ;
struct TYPE_20__ {size_t c_offset; } ;


 size_t C_SEG_BYTES_TO_OFFSET (size_t) ;
 int C_SEG_MAKE_WRITEABLE (TYPE_4__*) ;
 size_t C_SEG_OFFSET_ALIGNMENT_MASK ;
 size_t C_SEG_OFFSET_TO_BYTES (size_t) ;
 TYPE_2__* C_SEG_SLOT_FROM_INDEX (TYPE_4__*,int) ;
 size_t C_SEG_UNUSED_BYTES (TYPE_4__*) ;
 int C_SEG_WAKEUP_DONE (TYPE_4__*) ;
 int C_SEG_WRITE_PROTECT (TYPE_4__*) ;
 scalar_t__ C_SLOT_UNPACK_PTR (TYPE_2__*) ;
 scalar_t__ FALSE ;
 int KMA_COMPRESSOR ;
 int PACK_C_SIZE (TYPE_2__*,int ) ;
 size_t PAGE_SIZE ;
 scalar_t__ TRUE ;
 size_t UNPACK_C_SIZE (TYPE_2__*) ;
 int assert (int ) ;
 int c_seg_free (TYPE_4__*) ;
 int c_seg_validate (TYPE_4__*,scalar_t__) ;
 int compressor_map ;
 int cslot_copy (TYPE_2__*,TYPE_2__*) ;
 int kernel_memory_depopulate (int ,int ,size_t,int ) ;
 int lck_mtx_lock_spin_always (int *) ;
 int lck_mtx_unlock_always (int *) ;
 int memcpy (int *,int *,size_t) ;

int
c_seg_minor_compaction_and_unlock(c_segment_t c_seg, boolean_t clear_busy)
{
 c_slot_mapping_t slot_ptr;
 uint32_t c_offset = 0;
 uint32_t old_populated_offset;
 uint32_t c_rounded_size;
 uint32_t c_size;
 int c_indx = 0;
 int i;
 c_slot_t c_dst;
 c_slot_t c_src;

 assert(c_seg->c_busy);




 if (c_seg->c_bytes_used == 0) {
  c_seg_free(c_seg);
  return (1);
 }
 lck_mtx_unlock_always(&c_seg->c_lock);

 if (c_seg->c_firstemptyslot >= c_seg->c_nextslot || C_SEG_UNUSED_BYTES(c_seg) < PAGE_SIZE)
  goto done;
 c_indx = c_seg->c_firstemptyslot;
 c_dst = C_SEG_SLOT_FROM_INDEX(c_seg, c_indx);

 old_populated_offset = c_seg->c_populated_offset;
 c_offset = c_dst->c_offset;

 for (i = c_indx + 1; i < c_seg->c_nextslot && c_offset < c_seg->c_nextoffset; i++) {

  c_src = C_SEG_SLOT_FROM_INDEX(c_seg, i);

  c_size = UNPACK_C_SIZE(c_src);

  if (c_size == 0)
   continue;

  c_rounded_size = (c_size + C_SEG_OFFSET_ALIGNMENT_MASK) & ~C_SEG_OFFSET_ALIGNMENT_MASK;

  memcpy(&c_seg->c_store.c_buffer[c_offset], &c_seg->c_store.c_buffer[c_src->c_offset], c_rounded_size);

  cslot_copy(c_dst, c_src);
  c_dst->c_offset = c_offset;

  slot_ptr = (c_slot_mapping_t)C_SLOT_UNPACK_PTR(c_dst);
  slot_ptr->s_cindx = c_indx;

  c_offset += C_SEG_BYTES_TO_OFFSET(c_rounded_size);
  PACK_C_SIZE(c_src, 0);
  c_indx++;

  c_dst = C_SEG_SLOT_FROM_INDEX(c_seg, c_indx);
 }
 c_seg->c_firstemptyslot = c_indx;
 c_seg->c_nextslot = c_indx;
 c_seg->c_nextoffset = c_offset;
 c_seg->c_populated_offset = (c_offset + (C_SEG_BYTES_TO_OFFSET(PAGE_SIZE) - 1)) & ~(C_SEG_BYTES_TO_OFFSET(PAGE_SIZE) - 1);
 c_seg->c_bytes_unused = 0;




 if (old_populated_offset > c_seg->c_populated_offset) {
  uint32_t gc_size;
  int32_t *gc_ptr;

  gc_size = C_SEG_OFFSET_TO_BYTES(old_populated_offset - c_seg->c_populated_offset);
  gc_ptr = &c_seg->c_store.c_buffer[c_seg->c_populated_offset];

  kernel_memory_depopulate(compressor_map, (vm_offset_t)gc_ptr, gc_size, KMA_COMPRESSOR);
 }





done:
 if (clear_busy == TRUE) {
  lck_mtx_lock_spin_always(&c_seg->c_lock);
  C_SEG_WAKEUP_DONE(c_seg);
  lck_mtx_unlock_always(&c_seg->c_lock);
 }
 return (0);
}
