
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vm_shared_region_t ;
typedef int vm_prot_t ;
typedef scalar_t__ vm_map_size_t ;
typedef scalar_t__ vm_map_offset_t ;
typedef void task ;
typedef void _vm_map ;
typedef scalar_t__ kern_return_t ;
typedef void* ipc_port_t ;
typedef int cpu_type_t ;
typedef int cpu_subtype_t ;
typedef int boolean_t ;
struct TYPE_5__ {scalar_t__ sr_base_address; scalar_t__ sr_size; scalar_t__ sr_pmap_nesting_start; scalar_t__ sr_pmap_nesting_size; void* sr_mem_entry; } ;


 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 int SHARED_REGION_TRACE_DEBUG (char*) ;
 int SHARED_REGION_TRACE_ERROR (char*) ;
 int TRUE ;
 int VM_FLAGS_FIXED ;
 int VM_INHERIT_SHARE ;
 scalar_t__ VM_KERNEL_ADDRPERM (void*) ;
 int VM_KERN_MEMORY_NONE ;
 int VM_MAP_KERNEL_FLAGS_NONE ;
 int VM_MEMORY_SHARED_PMAP ;
 int VM_PROT_ALL ;
 int VM_PROT_READ ;
 int assert (int) ;
 scalar_t__ pmap_nesting_size_max ;
 scalar_t__ vm_map_enter_mem_object (void*,scalar_t__*,scalar_t__,int ,int ,int ,int ,void*,scalar_t__,int ,int ,int ,int ) ;
 int vm_shared_region_deallocate (TYPE_1__*) ;
 TYPE_1__* vm_shared_region_lookup (void*,int ,int ,int ) ;
 int vm_shared_region_set (void*,TYPE_1__*) ;

kern_return_t
vm_shared_region_enter(
 struct _vm_map *map,
 struct task *task,
 boolean_t is_64bit,
 void *fsroot,
 cpu_type_t cpu,
 cpu_subtype_t cpu_subtype)
{
 kern_return_t kr;
 vm_shared_region_t shared_region;
 vm_map_offset_t sr_address, sr_offset, target_address;
 vm_map_size_t sr_size, mapping_size;
 vm_map_offset_t sr_pmap_nesting_start;
 vm_map_size_t sr_pmap_nesting_size;
 ipc_port_t sr_handle;
 vm_prot_t cur_prot, max_prot;

 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: -> "
   "enter(map=%p,task=%p,root=%p,cpu=<%d,%d>,64bit=%d)\n",
   (void *)VM_KERNEL_ADDRPERM(map),
   (void *)VM_KERNEL_ADDRPERM(task),
   (void *)VM_KERNEL_ADDRPERM(fsroot),
   cpu, cpu_subtype, is_64bit));


 shared_region = vm_shared_region_lookup(fsroot, cpu, cpu_subtype, is_64bit);
 if (shared_region == ((void*)0)) {

  SHARED_REGION_TRACE_ERROR(
   ("shared_region: -> "
    "enter(map=%p,task=%p,root=%p,cpu=<%d,%d>,64bit=%d): "
    "lookup failed !\n",
    (void *)VM_KERNEL_ADDRPERM(map),
    (void *)VM_KERNEL_ADDRPERM(task),
    (void *)VM_KERNEL_ADDRPERM(fsroot),
    cpu, cpu_subtype, is_64bit));

  return KERN_FAILURE;
 }

 kr = KERN_SUCCESS;

 sr_address = shared_region->sr_base_address;
 sr_size = shared_region->sr_size;
 sr_handle = shared_region->sr_mem_entry;
 sr_pmap_nesting_start = shared_region->sr_pmap_nesting_start;
 sr_pmap_nesting_size = shared_region->sr_pmap_nesting_size;

 cur_prot = VM_PROT_READ;







 max_prot = VM_PROT_ALL;






 sr_offset = 0;

 if (sr_pmap_nesting_start > sr_address) {

  target_address = sr_address;
  mapping_size = sr_pmap_nesting_start - sr_address;
  kr = vm_map_enter_mem_object(
   map,
   &target_address,
   mapping_size,
   0,
   VM_FLAGS_FIXED,
   VM_MAP_KERNEL_FLAGS_NONE,
   VM_KERN_MEMORY_NONE,
   sr_handle,
   sr_offset,
   TRUE,
   cur_prot,
   max_prot,
   VM_INHERIT_SHARE);
  if (kr != KERN_SUCCESS) {
   SHARED_REGION_TRACE_ERROR(
    ("shared_region: enter(%p,%p,%p,%d,%d,%d): "
     "vm_map_enter(0x%llx,0x%llx,%p) error 0x%x\n",
     (void *)VM_KERNEL_ADDRPERM(map),
     (void *)VM_KERNEL_ADDRPERM(task),
     (void *)VM_KERNEL_ADDRPERM(fsroot),
     cpu, cpu_subtype, is_64bit,
     (long long)target_address,
     (long long)mapping_size,
     (void *)VM_KERNEL_ADDRPERM(sr_handle), kr));
   goto done;
  }
  SHARED_REGION_TRACE_DEBUG(
   ("shared_region: enter(%p,%p,%p,%d,%d,%d): "
    "vm_map_enter(0x%llx,0x%llx,%p) error 0x%x\n",
    (void *)VM_KERNEL_ADDRPERM(map),
    (void *)VM_KERNEL_ADDRPERM(task),
    (void *)VM_KERNEL_ADDRPERM(fsroot),
    cpu, cpu_subtype, is_64bit,
    (long long)target_address, (long long)mapping_size,
    (void *)VM_KERNEL_ADDRPERM(sr_handle), kr));
  sr_offset += mapping_size;
  sr_size -= mapping_size;
 }





 for (;
      sr_pmap_nesting_size > 0;
      sr_offset += mapping_size,
       sr_size -= mapping_size,
       sr_pmap_nesting_size -= mapping_size) {
  target_address = sr_address + sr_offset;
  mapping_size = sr_pmap_nesting_size;
  if (mapping_size > pmap_nesting_size_max) {
   mapping_size = (vm_map_offset_t) pmap_nesting_size_max;
  }
  kr = vm_map_enter_mem_object(
   map,
   &target_address,
   mapping_size,
   0,
   VM_FLAGS_FIXED,
   VM_MAP_KERNEL_FLAGS_NONE,
   VM_MEMORY_SHARED_PMAP,
   sr_handle,
   sr_offset,
   TRUE,
   cur_prot,
   max_prot,
   VM_INHERIT_SHARE);
  if (kr != KERN_SUCCESS) {
   SHARED_REGION_TRACE_ERROR(
    ("shared_region: enter(%p,%p,%p,%d,%d,%d): "
     "vm_map_enter(0x%llx,0x%llx,%p) error 0x%x\n",
     (void *)VM_KERNEL_ADDRPERM(map),
     (void *)VM_KERNEL_ADDRPERM(task),
     (void *)VM_KERNEL_ADDRPERM(fsroot),
     cpu, cpu_subtype, is_64bit,
     (long long)target_address,
     (long long)mapping_size,
     (void *)VM_KERNEL_ADDRPERM(sr_handle), kr));
   goto done;
  }
  SHARED_REGION_TRACE_DEBUG(
   ("shared_region: enter(%p,%p,%p,%d,%d,%d): "
    "nested vm_map_enter(0x%llx,0x%llx,%p) error 0x%x\n",
    (void *)VM_KERNEL_ADDRPERM(map),
    (void *)VM_KERNEL_ADDRPERM(task),
    (void *)VM_KERNEL_ADDRPERM(fsroot),
    cpu, cpu_subtype, is_64bit,
    (long long)target_address, (long long)mapping_size,
    (void *)VM_KERNEL_ADDRPERM(sr_handle), kr));
 }
 if (sr_size > 0) {

  target_address = sr_address + sr_offset;
  mapping_size = sr_size;
  kr = vm_map_enter_mem_object(
   map,
   &target_address,
   mapping_size,
   0,
   VM_FLAGS_FIXED,
   VM_MAP_KERNEL_FLAGS_NONE,
   VM_KERN_MEMORY_NONE,
   sr_handle,
   sr_offset,
   TRUE,
   cur_prot,
   max_prot,
   VM_INHERIT_SHARE);
  if (kr != KERN_SUCCESS) {
   SHARED_REGION_TRACE_ERROR(
    ("shared_region: enter(%p,%p,%p,%d,%d,%d): "
     "vm_map_enter(0x%llx,0x%llx,%p) error 0x%x\n",
     (void *)VM_KERNEL_ADDRPERM(map),
     (void *)VM_KERNEL_ADDRPERM(task),
     (void *)VM_KERNEL_ADDRPERM(fsroot),
     cpu, cpu_subtype, is_64bit,
     (long long)target_address,
     (long long)mapping_size,
     (void *)VM_KERNEL_ADDRPERM(sr_handle), kr));
   goto done;
  }
  SHARED_REGION_TRACE_DEBUG(
   ("shared_region: enter(%p,%p,%p,%d,%d,%d): "
    "vm_map_enter(0x%llx,0x%llx,%p) error 0x%x\n",
    (void *)VM_KERNEL_ADDRPERM(map),
    (void *)VM_KERNEL_ADDRPERM(task),
    (void *)VM_KERNEL_ADDRPERM(fsroot),
    cpu, cpu_subtype, is_64bit,
    (long long)target_address, (long long)mapping_size,
    (void *)VM_KERNEL_ADDRPERM(sr_handle), kr));
  sr_offset += mapping_size;
  sr_size -= mapping_size;
 }
 assert(sr_size == 0);

done:
 if (kr == KERN_SUCCESS) {

  vm_shared_region_set(task, shared_region);
 } else {

  vm_shared_region_deallocate(shared_region);
  vm_shared_region_set(task, ((void*)0));
 }

 SHARED_REGION_TRACE_DEBUG(
  ("shared_region: enter(%p,%p,%p,%d,%d,%d) <- 0x%x\n",
   (void *)VM_KERNEL_ADDRPERM(map),
   (void *)VM_KERNEL_ADDRPERM(task),
   (void *)VM_KERNEL_ADDRPERM(fsroot),
   cpu, cpu_subtype, is_64bit, kr));
 return kr;
}
