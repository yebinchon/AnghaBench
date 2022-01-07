
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef TYPE_1__* c_slot_t ;
typedef TYPE_2__* c_segment_t ;
struct TYPE_8__ {scalar_t__ c_bytes_used; scalar_t__ c_nextslot; int c_populated_offset; int c_nextoffset; scalar_t__ c_firstemptyslot; } ;
struct TYPE_7__ {int c_offset; } ;


 int C_SEG_BYTES_TO_OFFSET (int) ;
 int C_SEG_OFFSET_ALIGNMENT_MASK ;
 int C_SEG_OFFSET_TO_BYTES (int) ;
 TYPE_1__* C_SEG_SLOT_FROM_INDEX (TYPE_2__*,scalar_t__) ;
 int PAGE_SIZE ;
 int UNPACK_C_SIZE (TYPE_1__*) ;
 int assert (scalar_t__) ;
 int c_seg_trim_page_count ;
 int round_page_32 (int ) ;

void
c_seg_trim_tail(c_segment_t c_seg)
{
 c_slot_t cs;
 uint32_t c_size;
 uint32_t c_offset;
 uint32_t c_rounded_size;
 uint16_t current_nextslot;
 uint32_t current_populated_offset;

 if (c_seg->c_bytes_used == 0)
  return;
 current_nextslot = c_seg->c_nextslot;
 current_populated_offset = c_seg->c_populated_offset;

 while (c_seg->c_nextslot) {

  cs = C_SEG_SLOT_FROM_INDEX(c_seg, (c_seg->c_nextslot - 1));

  c_size = UNPACK_C_SIZE(cs);

  if (c_size) {
   if (current_nextslot != c_seg->c_nextslot) {
    c_rounded_size = (c_size + C_SEG_OFFSET_ALIGNMENT_MASK) & ~C_SEG_OFFSET_ALIGNMENT_MASK;
    c_offset = cs->c_offset + C_SEG_BYTES_TO_OFFSET(c_rounded_size);

    c_seg->c_nextoffset = c_offset;
    c_seg->c_populated_offset = (c_offset + (C_SEG_BYTES_TO_OFFSET(PAGE_SIZE) - 1)) &
                                           ~(C_SEG_BYTES_TO_OFFSET(PAGE_SIZE) - 1);

    if (c_seg->c_firstemptyslot > c_seg->c_nextslot)
     c_seg->c_firstemptyslot = c_seg->c_nextslot;





   }
   break;
  }
  c_seg->c_nextslot--;
 }
 assert(c_seg->c_nextslot);
}
