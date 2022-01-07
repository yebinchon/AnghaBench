
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_tag_t ;
typedef int uint64_t ;
typedef size_t uint32_t ;


 int VM_KERN_MEMORY_ANY ;
 int assert (int) ;
 int* free_tag_bits ;

__attribute__((used)) static void
vm_tag_free_locked(vm_tag_t tag)
{
    uint64_t avail;
    uint32_t idx;
    uint64_t bit;

    if (VM_KERN_MEMORY_ANY == tag) return;

    idx = (tag >> 6);
    avail = free_tag_bits[idx];
    tag &= 63;
    bit = (1ULL << (63 - tag));
    assert(!(avail & bit));
    free_tag_bits[idx] = (avail | bit);
}
