
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int vm_map_t ;
typedef scalar_t__ kern_return_t ;


 scalar_t__ KERN_SUCCESS ;
 int KMA_KOBJECT ;
 int KMA_LOMEM ;
 int PAGE_MASK ;
 int VM_KERN_MEMORY_MBUF ;
 scalar_t__ kernel_memory_allocate (int ,scalar_t__*,int,int ,int,int ) ;
 scalar_t__ kmem_alloc_contig (int ,scalar_t__*,int,int ,int,int ,int,int ) ;

vm_offset_t
kmem_mb_alloc(vm_map_t mbmap, int size, int physContig, kern_return_t *err)
{
 vm_offset_t addr = 0;
 kern_return_t kr = KERN_SUCCESS;

 if (!physContig)
  kr = kernel_memory_allocate(mbmap, &addr, size, 0, KMA_KOBJECT | KMA_LOMEM, VM_KERN_MEMORY_MBUF);
 else
  kr = kmem_alloc_contig(mbmap, &addr, size, PAGE_MASK, 0xfffff, 0, KMA_KOBJECT | KMA_LOMEM, VM_KERN_MEMORY_MBUF);

 if (kr != KERN_SUCCESS)
  addr = 0;
 if (err)
  *err = kr;

 return addr;
}
