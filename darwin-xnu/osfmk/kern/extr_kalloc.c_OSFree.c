
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_offset_t ;
typedef int uint32_t ;
struct TYPE_4__ {int OSMT_attr; } ;
typedef TYPE_1__* OSMallocTag ;


 int OSMT_PAGEABLE ;
 int OSMalloc_Tagrele (TYPE_1__*) ;
 int PAGE_MASK ;
 int kernel_map ;
 int kfree (void*,int) ;
 int kmem_free (int ,int ,int) ;

void
OSFree(
 void *addr,
 uint32_t size,
 OSMallocTag tag)
{
 if ((tag->OSMT_attr & OSMT_PAGEABLE)
     && (size & ~PAGE_MASK)) {
  kmem_free(kernel_map, (vm_offset_t)addr, size);
 } else
  kfree((void *)addr, size);

 OSMalloc_Tagrele(tag);
}
