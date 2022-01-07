
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int COMPRESSED_SWAP_CHUNK_SIZE ;
 scalar_t__ vm_swapfile_total_segs_used ;

uint64_t
vm_swap_get_used_space(void)
{
 uint64_t used_space = 0;

 used_space = (uint64_t)vm_swapfile_total_segs_used * COMPRESSED_SWAP_CHUNK_SIZE;

 return used_space;
}
