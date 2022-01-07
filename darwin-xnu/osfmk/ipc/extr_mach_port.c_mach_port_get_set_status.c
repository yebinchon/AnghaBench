
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int vm_map_size_t ;
typedef scalar_t__ vm_map_copy_t ;
typedef int vm_map_address_t ;
typedef int mach_port_name_t ;
typedef int mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef TYPE_1__* ipc_pset_t ;
typedef scalar_t__ ipc_object_t ;
typedef int ipc_entry_num_t ;
struct TYPE_6__ {int ips_messages; } ;


 int FALSE ;
 scalar_t__ IS_NULL ;
 scalar_t__ KERN_INVALID_RIGHT ;
 scalar_t__ KERN_INVALID_TASK ;
 scalar_t__ KERN_RESOURCE_SHORTAGE ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_RIGHT_PORT_SET ;
 int MACH_PORT_VALID (int ) ;
 int TRUE ;
 int VM_FLAGS_ANYWHERE ;
 int VM_KERN_MEMORY_IPC ;
 scalar_t__ VM_MAP_COPY_NULL ;
 int VM_MAP_PAGE_MASK (int ) ;
 int VM_MAP_PAGE_SIZE (int ) ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int __IGNORE_WCASTALIGN (TYPE_1__*) ;
 int assert (int) ;
 int ipc_kernel_map ;
 int ipc_mqueue_set_gather_member_names (scalar_t__,int *,int,int *,int*) ;
 scalar_t__ ipc_object_translate (scalar_t__,int ,int ,scalar_t__*) ;
 int ips_reference (TYPE_1__*) ;
 int ips_release (TYPE_1__*) ;
 int ips_unlock (TYPE_1__*) ;
 int kmem_free (int ,int,int) ;
 scalar_t__ vm_allocate_kernel (int ,int*,int,int ,int ) ;
 scalar_t__ vm_map_copyin (int ,int ,int ,int ,scalar_t__*) ;
 int vm_map_round_page (int,int ) ;
 int vm_map_trunc_page (int,int ) ;
 scalar_t__ vm_map_unwire (int ,int ,int,int ) ;
 scalar_t__ vm_map_wire_kernel (int ,int,int,int,int ,int ) ;

kern_return_t
mach_port_get_set_status(
 ipc_space_t space,
 mach_port_name_t name,
 mach_port_name_t **members,
 mach_msg_type_number_t *membersCnt)
{
 ipc_entry_num_t actual;
 ipc_entry_num_t maxnames;
 kern_return_t kr;

 vm_size_t size;
 vm_offset_t addr;
 vm_map_copy_t memory;

 if (space == IS_NULL)
  return KERN_INVALID_TASK;

 if (!MACH_PORT_VALID(name))
  return KERN_INVALID_RIGHT;

 size = VM_MAP_PAGE_SIZE(ipc_kernel_map);

 for (;;) {
  mach_port_name_t *names;
  ipc_object_t psobj;
  ipc_pset_t pset;

  kr = vm_allocate_kernel(ipc_kernel_map, &addr, size, VM_FLAGS_ANYWHERE, VM_KERN_MEMORY_IPC);
  if (kr != KERN_SUCCESS)
   return KERN_RESOURCE_SHORTAGE;



  kr = vm_map_wire_kernel(ipc_kernel_map, addr, addr + size,
         VM_PROT_READ|VM_PROT_WRITE, VM_KERN_MEMORY_IPC, FALSE);
  assert(kr == KERN_SUCCESS);

  kr = ipc_object_translate(space, name, MACH_PORT_RIGHT_PORT_SET, &psobj);
  if (kr != KERN_SUCCESS) {
   kmem_free(ipc_kernel_map, addr, size);
   return kr;
  }


  __IGNORE_WCASTALIGN(pset = (ipc_pset_t) psobj);
  ips_reference(pset);
  ips_unlock(pset);

  names = (mach_port_name_t *) addr;
  maxnames = (ipc_entry_num_t)(size / sizeof(mach_port_name_t));

  ipc_mqueue_set_gather_member_names(space, &pset->ips_messages, maxnames, names, &actual);


  ips_release(pset);

  if (actual <= maxnames)
   break;


  kmem_free(ipc_kernel_map, addr, size);
  size = vm_map_round_page(
   (actual * sizeof(mach_port_name_t)),
    VM_MAP_PAGE_MASK(ipc_kernel_map)) +
   VM_MAP_PAGE_SIZE(ipc_kernel_map);
 }

 if (actual == 0) {
  memory = VM_MAP_COPY_NULL;

  kmem_free(ipc_kernel_map, addr, size);
 } else {
  vm_size_t size_used;
  vm_size_t vm_size_used;

  size_used = actual * sizeof(mach_port_name_t);
  vm_size_used = vm_map_round_page(
   size_used,
   VM_MAP_PAGE_MASK(ipc_kernel_map));






  kr = vm_map_unwire(
   ipc_kernel_map,
   vm_map_trunc_page(addr,
       VM_MAP_PAGE_MASK(ipc_kernel_map)),
   vm_map_round_page(addr + vm_size_used,
       VM_MAP_PAGE_MASK(ipc_kernel_map)),
   FALSE);
  assert(kr == KERN_SUCCESS);

  kr = vm_map_copyin(ipc_kernel_map, (vm_map_address_t)addr,
       (vm_map_size_t)size_used, TRUE, &memory);
  assert(kr == KERN_SUCCESS);

  if (vm_size_used != size)
   kmem_free(ipc_kernel_map,
      addr + vm_size_used, size - vm_size_used);
 }

 *members = (mach_port_name_t *) memory;
 *membersCnt = actual;
 return KERN_SUCCESS;
}
