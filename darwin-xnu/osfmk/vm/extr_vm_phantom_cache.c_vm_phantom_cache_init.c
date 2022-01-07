
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_phantom_hash_entry_t ;
typedef int vm_offset_t ;
typedef unsigned int uint32_t ;
struct vm_ghost {int dummy; } ;


 scalar_t__ KERN_SUCCESS ;
 int KMA_KOBJECT ;
 int KMA_PERMANENT ;
 int PAGE_SIZE ;
 int VM_CONFIG_COMPRESSOR_IS_ACTIVE ;
 int VM_GHOST_PAGES_PER_ENTRY ;
 int VM_KERN_MEMORY_PHANTOM_CACHE ;
 int bzero (int ,int) ;
 int kernel_map ;
 scalar_t__ kernel_memory_allocate (int ,int *,int,int ,int,int ) ;
 int max_mem ;
 int panic (char*) ;
 int printf (char*) ;
 int vm_ghost_bucket_hash ;
 unsigned int vm_ghost_hash_mask ;
 int vm_phantom_cache ;
 int vm_phantom_cache_hash ;
 int vm_phantom_cache_hash_size ;
 unsigned int vm_phantom_cache_num_entries ;
 int vm_phantom_cache_size ;

void
vm_phantom_cache_init()
{
 unsigned int num_entries;
 unsigned int log1;
 unsigned int size;

 if ( !VM_CONFIG_COMPRESSOR_IS_ACTIVE)
  return;



 num_entries = (uint32_t)(((max_mem / PAGE_SIZE) / 4) / VM_GHOST_PAGES_PER_ENTRY);

 vm_phantom_cache_num_entries = 1;

 while (vm_phantom_cache_num_entries < num_entries)
  vm_phantom_cache_num_entries <<= 1;

 vm_phantom_cache_size = sizeof(struct vm_ghost) * vm_phantom_cache_num_entries;
 vm_phantom_cache_hash_size = sizeof(vm_phantom_hash_entry_t) * vm_phantom_cache_num_entries;

 if (kernel_memory_allocate(kernel_map, (vm_offset_t *)(&vm_phantom_cache), vm_phantom_cache_size, 0, KMA_KOBJECT | KMA_PERMANENT, VM_KERN_MEMORY_PHANTOM_CACHE) != KERN_SUCCESS)
  panic("vm_phantom_cache_init: kernel_memory_allocate failed\n");
 bzero(vm_phantom_cache, vm_phantom_cache_size);

 if (kernel_memory_allocate(kernel_map, (vm_offset_t *)(&vm_phantom_cache_hash), vm_phantom_cache_hash_size, 0, KMA_KOBJECT | KMA_PERMANENT, VM_KERN_MEMORY_PHANTOM_CACHE) != KERN_SUCCESS)
  panic("vm_phantom_cache_init: kernel_memory_allocate failed\n");
 bzero(vm_phantom_cache_hash, vm_phantom_cache_hash_size);


 vm_ghost_hash_mask = vm_phantom_cache_num_entries - 1;
 size = vm_phantom_cache_num_entries;
 for (log1 = 0; size > 1; log1++)
  size /= 2;

 vm_ghost_bucket_hash = 1 << ((log1 + 1) >> 1);
 vm_ghost_bucket_hash |= 1 << ((log1 + 1) >> 2);
 vm_ghost_bucket_hash |= 1;

 if (vm_ghost_hash_mask & vm_phantom_cache_num_entries)
  printf("vm_phantom_cache_init: WARNING -- strange page hash\n");
}
