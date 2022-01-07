
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_map_size_t ;
typedef scalar_t__ vm_map_copy_t ;
typedef int vm_map_address_t ;
typedef int mach_port_type_t ;
typedef int mach_port_name_t ;
typedef int mach_port_index_t ;
typedef int mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;
typedef TYPE_1__* ipc_space_t ;
typedef int ipc_port_timestamp_t ;
typedef TYPE_2__* ipc_entry_t ;
typedef int ipc_entry_num_t ;
typedef int ipc_entry_bits_t ;
struct TYPE_10__ {int ie_bits; } ;
struct TYPE_9__ {int is_table_size; TYPE_2__* is_table; } ;


 int FALSE ;
 int IE_BITS_GEN (int ) ;
 scalar_t__ IE_BITS_TYPE (int ) ;
 TYPE_1__* IS_NULL ;
 scalar_t__ KERN_INVALID_TASK ;
 scalar_t__ KERN_RESOURCE_SHORTAGE ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_MAKE (int,int ) ;
 scalar_t__ MACH_PORT_TYPE_NONE ;
 int TRUE ;
 int VM_FLAGS_ANYWHERE ;
 int VM_KERN_MEMORY_IPC ;
 scalar_t__ VM_MAP_COPY_NULL ;
 int VM_MAP_PAGE_MASK (int ) ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int assert (int) ;
 int ipc_kernel_map ;
 int ipc_port_timestamp () ;
 int is_active (TYPE_1__*) ;
 int is_read_lock (TYPE_1__*) ;
 int is_read_unlock (TYPE_1__*) ;
 int kmem_free (int ,scalar_t__,scalar_t__) ;
 int mach_port_names_helper (int ,TYPE_2__*,int ,int *,int *,int*) ;
 int static_assert (int) ;
 scalar_t__ vm_allocate_kernel (int ,scalar_t__*,scalar_t__,int ,int ) ;
 scalar_t__ vm_map_copyin (int ,int ,int ,int ,scalar_t__*) ;
 scalar_t__ vm_map_round_page (scalar_t__,int ) ;
 int vm_map_trunc_page (scalar_t__,int ) ;
 scalar_t__ vm_map_unwire (int ,int ,scalar_t__,int ) ;
 scalar_t__ vm_map_wire_kernel (int ,int ,scalar_t__,int,int ,int ) ;

kern_return_t
mach_port_names(
 ipc_space_t space,
 mach_port_name_t **namesp,
 mach_msg_type_number_t *namesCnt,
 mach_port_type_t **typesp,
 mach_msg_type_number_t *typesCnt)
{
 ipc_entry_t table;
 ipc_entry_num_t tsize;
 mach_port_index_t index;
 ipc_entry_num_t actual;
 ipc_port_timestamp_t timestamp;
 mach_port_name_t *names;
 mach_port_type_t *types;
 kern_return_t kr;

 vm_size_t size;
 vm_offset_t addr1;
 vm_offset_t addr2;
 vm_map_copy_t memory1;
 vm_map_copy_t memory2;


 static_assert(sizeof(mach_port_name_t) == sizeof(mach_port_type_t));

 if (space == IS_NULL)
  return KERN_INVALID_TASK;

 size = 0;

 for (;;) {
  ipc_entry_num_t bound;
  vm_size_t size_needed;

  is_read_lock(space);
  if (!is_active(space)) {
   is_read_unlock(space);
   if (size != 0) {
    kmem_free(ipc_kernel_map, addr1, size);
    kmem_free(ipc_kernel_map, addr2, size);
   }
   return KERN_INVALID_TASK;
  }


  bound = space->is_table_size;
  size_needed = vm_map_round_page(
   (bound * sizeof(mach_port_name_t)),
   VM_MAP_PAGE_MASK(ipc_kernel_map));

  if (size_needed <= size)
   break;

  is_read_unlock(space);

  if (size != 0) {
   kmem_free(ipc_kernel_map, addr1, size);
   kmem_free(ipc_kernel_map, addr2, size);
  }
  size = size_needed;

  kr = vm_allocate_kernel(ipc_kernel_map, &addr1, size, VM_FLAGS_ANYWHERE, VM_KERN_MEMORY_IPC);
  if (kr != KERN_SUCCESS)
   return KERN_RESOURCE_SHORTAGE;

  kr = vm_allocate_kernel(ipc_kernel_map, &addr2, size, VM_FLAGS_ANYWHERE, VM_KERN_MEMORY_IPC);
  if (kr != KERN_SUCCESS) {
   kmem_free(ipc_kernel_map, addr1, size);
   return KERN_RESOURCE_SHORTAGE;
  }



  kr = vm_map_wire_kernel(
   ipc_kernel_map,
   vm_map_trunc_page(addr1,
       VM_MAP_PAGE_MASK(ipc_kernel_map)),
   vm_map_round_page(addr1 + size,
       VM_MAP_PAGE_MASK(ipc_kernel_map)),
   VM_PROT_READ|VM_PROT_WRITE, VM_KERN_MEMORY_IPC,
   FALSE);
  if (kr != KERN_SUCCESS) {
   kmem_free(ipc_kernel_map, addr1, size);
   kmem_free(ipc_kernel_map, addr2, size);
   return KERN_RESOURCE_SHORTAGE;
  }

  kr = vm_map_wire_kernel(
   ipc_kernel_map,
   vm_map_trunc_page(addr2,
       VM_MAP_PAGE_MASK(ipc_kernel_map)),
   vm_map_round_page(addr2 + size,
       VM_MAP_PAGE_MASK(ipc_kernel_map)),
   VM_PROT_READ|VM_PROT_WRITE,
   VM_KERN_MEMORY_IPC,
   FALSE);
  if (kr != KERN_SUCCESS) {
   kmem_free(ipc_kernel_map, addr1, size);
   kmem_free(ipc_kernel_map, addr2, size);
   return KERN_RESOURCE_SHORTAGE;
  }

 }


 names = (mach_port_name_t *) addr1;
 types = (mach_port_type_t *) addr2;
 actual = 0;

 timestamp = ipc_port_timestamp();

 table = space->is_table;
 tsize = space->is_table_size;

 for (index = 0; index < tsize; index++) {
  ipc_entry_t entry = &table[index];
  ipc_entry_bits_t bits = entry->ie_bits;

  if (IE_BITS_TYPE(bits) != MACH_PORT_TYPE_NONE) {
   mach_port_name_t name;

   name = MACH_PORT_MAKE(index, IE_BITS_GEN(bits));
   mach_port_names_helper(timestamp, entry, name, names,
            types, &actual);
  }
 }

 is_read_unlock(space);

 if (actual == 0) {
  memory1 = VM_MAP_COPY_NULL;
  memory2 = VM_MAP_COPY_NULL;

  if (size != 0) {
   kmem_free(ipc_kernel_map, addr1, size);
   kmem_free(ipc_kernel_map, addr2, size);
  }
 } else {
  vm_size_t size_used;
  vm_size_t vm_size_used;

  size_used = actual * sizeof(mach_port_name_t);
  vm_size_used =
   vm_map_round_page(size_used,
       VM_MAP_PAGE_MASK(ipc_kernel_map));






  kr = vm_map_unwire(
   ipc_kernel_map,
   vm_map_trunc_page(addr1,
       VM_MAP_PAGE_MASK(ipc_kernel_map)),
   vm_map_round_page(addr1 + vm_size_used,
       VM_MAP_PAGE_MASK(ipc_kernel_map)),
   FALSE);
  assert(kr == KERN_SUCCESS);

  kr = vm_map_unwire(
   ipc_kernel_map,
   vm_map_trunc_page(addr2,
       VM_MAP_PAGE_MASK(ipc_kernel_map)),
   vm_map_round_page(addr2 + vm_size_used,
       VM_MAP_PAGE_MASK(ipc_kernel_map)),
   FALSE);
  assert(kr == KERN_SUCCESS);

  kr = vm_map_copyin(ipc_kernel_map, (vm_map_address_t)addr1,
       (vm_map_size_t)size_used, TRUE, &memory1);
  assert(kr == KERN_SUCCESS);

  kr = vm_map_copyin(ipc_kernel_map, (vm_map_address_t)addr2,
       (vm_map_size_t)size_used, TRUE, &memory2);
  assert(kr == KERN_SUCCESS);

  if (vm_size_used != size) {
   kmem_free(ipc_kernel_map,
      addr1 + vm_size_used, size - vm_size_used);
   kmem_free(ipc_kernel_map,
      addr2 + vm_size_used, size - vm_size_used);
  }
 }

 *namesp = (mach_port_name_t *) memory1;
 *namesCnt = actual;
 *typesp = (mach_port_type_t *) memory2;
 *typesCnt = actual;
 return KERN_SUCCESS;
}
