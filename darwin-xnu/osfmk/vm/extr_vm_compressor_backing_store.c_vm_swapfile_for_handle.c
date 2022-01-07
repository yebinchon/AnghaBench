
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
struct swapfile {unsigned int swp_index; int swp_queue; } ;
typedef int queue_entry_t ;


 scalar_t__ FALSE ;
 unsigned int SWAP_DEVICE_SHIFT ;
 unsigned int SWAP_SLOT_MASK ;
 scalar_t__ queue_end (int *,int ) ;
 scalar_t__ queue_first (int *) ;
 scalar_t__ queue_next (int *) ;
 int swf_global_queue ;

__attribute__((used)) static struct swapfile *
vm_swapfile_for_handle(uint64_t f_offset)
{

 uint64_t file_offset = 0;
 unsigned int swapfile_index = 0;
 struct swapfile* swf = ((void*)0);

 file_offset = (f_offset & SWAP_SLOT_MASK);
 swapfile_index = (f_offset >> SWAP_DEVICE_SHIFT);

 swf = (struct swapfile*) queue_first(&swf_global_queue);

 while(queue_end(&swf_global_queue, (queue_entry_t)swf) == FALSE) {

  if (swapfile_index == swf->swp_index) {
   break;
  }

  swf = (struct swapfile*) queue_next(&swf->swp_queue);
 }

 if (queue_end(&swf_global_queue, (queue_entry_t) swf)) {
  swf = ((void*)0);
 }

 return swf;
}
