
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vm_size_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int OSMT_attr; } ;
typedef TYPE_1__* OSMallocTag ;


 int OSMT_PAGEABLE ;
 int OSMalloc_Tagref (TYPE_1__*) ;
 int OSMalloc_Tagrele (TYPE_1__*) ;
 int VM_KERN_MEMORY_KALLOC ;
 void* kalloc_noblock_tag_bt (int ,int ) ;

void *
OSMalloc_nowait(
 uint32_t size,
 OSMallocTag tag)
{
 void *addr=((void*)0);

 if (tag->OSMT_attr & OSMT_PAGEABLE)
  return(((void*)0));

 OSMalloc_Tagref(tag);

 addr = kalloc_noblock_tag_bt((vm_size_t)size, VM_KERN_MEMORY_KALLOC);
 if (addr == ((void*)0))
  OSMalloc_Tagrele(tag);

 return(addr);
}
