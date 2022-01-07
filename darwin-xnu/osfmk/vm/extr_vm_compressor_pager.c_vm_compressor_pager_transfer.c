
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int memory_object_t ;
typedef int memory_object_offset_t ;
typedef scalar_t__ compressor_slot_t ;
typedef TYPE_1__* compressor_pager_t ;
struct TYPE_6__ {int transfer; } ;
struct TYPE_5__ {int cpgr_num_slots; int cpgr_num_slots_occupied; } ;


 int FALSE ;
 int OSAddAtomic (int,int *) ;
 int PAGE_SIZE ;
 int TRUE ;
 int assert (int) ;
 int compressor_pager_lookup (int ,TYPE_1__*) ;
 int compressor_pager_slot_lookup (TYPE_1__*,int ,int,scalar_t__**) ;
 TYPE_2__ compressor_pager_stats ;
 int vm_compressor_transfer (scalar_t__*,scalar_t__*) ;

void
vm_compressor_pager_transfer(
 memory_object_t dst_mem_obj,
 memory_object_offset_t dst_offset,
 memory_object_t src_mem_obj,
 memory_object_offset_t src_offset)
{
 compressor_pager_t src_pager, dst_pager;
 compressor_slot_t *src_slot_p, *dst_slot_p;

 compressor_pager_stats.transfer++;


 assert((uint32_t) dst_offset == dst_offset);
 compressor_pager_lookup(dst_mem_obj, dst_pager);
 assert(dst_offset / PAGE_SIZE < dst_pager->cpgr_num_slots);
 compressor_pager_slot_lookup(dst_pager, TRUE, (uint32_t) dst_offset,
         &dst_slot_p);
 assert(dst_slot_p != ((void*)0));
 assert(*dst_slot_p == 0);


 assert((uint32_t) src_offset == src_offset);
 compressor_pager_lookup(src_mem_obj, src_pager);
 assert(src_offset / PAGE_SIZE < src_pager->cpgr_num_slots);
 compressor_pager_slot_lookup(src_pager, FALSE, (uint32_t) src_offset,
         &src_slot_p);
 assert(src_slot_p != ((void*)0));
 assert(*src_slot_p != 0);


 vm_compressor_transfer(dst_slot_p, src_slot_p);
 OSAddAtomic(-1, &src_pager->cpgr_num_slots_occupied);
 OSAddAtomic(+1, &dst_pager->cpgr_num_slots_occupied);
}
