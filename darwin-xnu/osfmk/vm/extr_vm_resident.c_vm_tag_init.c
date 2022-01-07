
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_tag_t ;


 scalar_t__ VM_KERN_MEMORY_ANY ;
 scalar_t__ VM_KERN_MEMORY_FIRST_DYNAMIC ;
 scalar_t__ VM_MAX_TAG_VALUE ;
 int vm_tag_free_locked (scalar_t__) ;

__attribute__((used)) static void
vm_tag_init(void)
{
    vm_tag_t tag;
    for (tag = VM_KERN_MEMORY_FIRST_DYNAMIC; tag < VM_KERN_MEMORY_ANY; tag++)
    {
        vm_tag_free_locked(tag);
    }

    for (tag = VM_KERN_MEMORY_ANY + 1; tag < VM_MAX_TAG_VALUE; tag++)
    {
        vm_tag_free_locked(tag);
    }
}
