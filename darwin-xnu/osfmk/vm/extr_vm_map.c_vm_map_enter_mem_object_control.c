
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int vm_tag_t ;
typedef int vm_prot_t ;
typedef TYPE_1__* vm_object_t ;
typedef int vm_object_size_t ;
typedef int vm_object_offset_t ;
typedef scalar_t__ vm_map_t ;
typedef scalar_t__ vm_map_size_t ;
typedef scalar_t__ vm_map_offset_t ;
struct TYPE_22__ {int vmkf_fourk; } ;
typedef TYPE_2__ vm_map_kernel_flags_t ;
typedef scalar_t__ vm_map_address_t ;
typedef int vm_inherit_t ;
typedef scalar_t__ memory_object_t ;
typedef int memory_object_control_t ;
typedef scalar_t__ kern_return_t ;
typedef int boolean_t ;
struct TYPE_21__ {scalar_t__ pager; scalar_t__ copy_strategy; int pager_ready; scalar_t__ named; int ref_count; } ;


 int FOURK_PAGE_MASK ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_INVALID_OBJECT ;
 scalar_t__ KERN_MEMORY_RESTART_COPY ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ MEMORY_OBJECT_COPY_NONE ;
 scalar_t__ MEMORY_OBJECT_NULL ;
 int THREAD_UNINT ;
 int VM_INHERIT_LAST_VALID ;
 scalar_t__ VM_MAP_NULL ;
 int VM_MAP_PAGE_MASK (scalar_t__) ;
 TYPE_1__* VM_OBJECT_NULL ;
 int VM_PROT_ALL ;
 int VM_PROT_WRITE ;
 int assert (int) ;
 TYPE_1__* kernel_object ;
 TYPE_1__* memory_object_control_to_vm_object (int ) ;
 scalar_t__ memory_object_map (scalar_t__,int) ;
 int printf (char*) ;
 scalar_t__ vm_map_enter (scalar_t__,scalar_t__*,scalar_t__,scalar_t__,int,TYPE_2__,int ,TYPE_1__*,int ,int,int,int,int ) ;
 scalar_t__ vm_map_enter_fourk (scalar_t__,scalar_t__*,scalar_t__,scalar_t__,int,TYPE_2__,int ,TYPE_1__*,int ,int,int,int,int ) ;
 scalar_t__ vm_map_round_page (scalar_t__,int ) ;
 scalar_t__ vm_map_trunc_page (scalar_t__,int ) ;
 int vm_object_copy_quickly (TYPE_1__**,int ,int ,int*,int*) ;
 scalar_t__ vm_object_copy_strategically (TYPE_1__*,int ,int ,TYPE_1__**,int *,int*) ;
 int vm_object_deallocate (TYPE_1__*) ;
 int vm_object_lock (TYPE_1__*) ;
 int vm_object_mapping_begin (TYPE_1__*) ;
 int vm_object_mapping_end (TYPE_1__*) ;
 int vm_object_mapping_wait (TYPE_1__*,int ) ;
 int vm_object_res_reference (TYPE_1__*) ;
 int vm_object_round_page (scalar_t__) ;
 int vm_object_unlock (TYPE_1__*) ;

kern_return_t
vm_map_enter_mem_object_control(
 vm_map_t target_map,
 vm_map_offset_t *address,
 vm_map_size_t initial_size,
 vm_map_offset_t mask,
 int flags,
 vm_map_kernel_flags_t vmk_flags,
 vm_tag_t tag,
 memory_object_control_t control,
 vm_object_offset_t offset,
 boolean_t copy,
 vm_prot_t cur_protection,
 vm_prot_t max_protection,
 vm_inherit_t inheritance)
{
 vm_map_address_t map_addr;
 vm_map_size_t map_size;
 vm_object_t object;
 vm_object_size_t size;
 kern_return_t result;
 memory_object_t pager;
 vm_prot_t pager_prot;
 kern_return_t kr;







 if ((target_map == VM_MAP_NULL) ||
     (cur_protection & ~VM_PROT_ALL) ||
     (max_protection & ~VM_PROT_ALL) ||
     (inheritance > VM_INHERIT_LAST_VALID) ||
     initial_size == 0) {
  return KERN_INVALID_ARGUMENT;
 }
 {
  map_addr = vm_map_trunc_page(*address,
          VM_MAP_PAGE_MASK(target_map));
  map_size = vm_map_round_page(initial_size,
          VM_MAP_PAGE_MASK(target_map));
 }
 size = vm_object_round_page(initial_size);

 object = memory_object_control_to_vm_object(control);

 if (object == VM_OBJECT_NULL)
  return KERN_INVALID_OBJECT;

 if (object == kernel_object) {
  printf("Warning: Attempt to map kernel object"
         " by a non-private kernel entity\n");
  return KERN_INVALID_OBJECT;
 }

 vm_object_lock(object);
 object->ref_count++;
 vm_object_res_reference(object);
 pager_prot = max_protection;
 if (copy) {
  pager_prot &= ~VM_PROT_WRITE;
 }
 pager = object->pager;
 if (object->named &&
     pager != MEMORY_OBJECT_NULL &&
     object->copy_strategy != MEMORY_OBJECT_COPY_NONE) {
  assert(object->pager_ready);
  vm_object_mapping_wait(object, THREAD_UNINT);
  vm_object_mapping_begin(object);
  vm_object_unlock(object);

  kr = memory_object_map(pager, pager_prot);
  assert(kr == KERN_SUCCESS);

  vm_object_lock(object);
  vm_object_mapping_end(object);
 }
 vm_object_unlock(object);





 if (copy) {
  vm_object_t new_object;
  vm_object_offset_t new_offset;

  result = vm_object_copy_strategically(object, offset, size,
            &new_object, &new_offset,
            &copy);


  if (result == KERN_MEMORY_RESTART_COPY) {
   boolean_t success;
   boolean_t src_needs_copy;
   new_object = object;
   new_offset = offset;
   success = vm_object_copy_quickly(&new_object,
        new_offset, size,
        &src_needs_copy,
        &copy);
   assert(success);
   result = KERN_SUCCESS;
  }





  vm_object_deallocate(object);

  if (result != KERN_SUCCESS) {
   return result;
  }

  object = new_object;
  offset = new_offset;
 }
 {
  result = vm_map_enter(target_map,
          &map_addr, map_size,
          (vm_map_offset_t)mask,
          flags,
          vmk_flags,
          tag,
          object, offset,
          copy,
          cur_protection, max_protection,
          inheritance);
 }
 if (result != KERN_SUCCESS)
  vm_object_deallocate(object);
 *address = map_addr;

 return result;
}
