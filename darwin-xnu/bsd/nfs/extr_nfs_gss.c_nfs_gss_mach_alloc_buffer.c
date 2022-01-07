
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
typedef scalar_t__ vm_offset_t ;
typedef int vm_map_size_t ;
typedef int * vm_map_copy_t ;
typedef int vm_map_address_t ;
typedef scalar_t__ uint32_t ;
typedef int u_char ;
typedef scalar_t__ kern_return_t ;


 int FALSE ;
 int TRUE ;
 int VM_FLAGS_ANYWHERE ;
 int VM_KERN_MEMORY_FILE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int bcopy (int *,void*,scalar_t__) ;
 int ipc_kernel_map ;
 int printf (char*) ;
 scalar_t__ vm_allocate_kernel (int ,scalar_t__*,scalar_t__,int ,int ) ;
 scalar_t__ vm_map_copyin (int ,int ,int ,int ,int **) ;
 int vm_map_page_mask (int ) ;
 scalar_t__ vm_map_round_page (scalar_t__,int ) ;
 int vm_map_trunc_page (scalar_t__,int ) ;
 scalar_t__ vm_map_unwire (int ,int ,scalar_t__,int ) ;
 scalar_t__ vm_map_wire_kernel (int ,int ,scalar_t__,int,int ,int ) ;

__attribute__((used)) static void
nfs_gss_mach_alloc_buffer(u_char *buf, uint32_t buflen, vm_map_copy_t *addr)
{
 kern_return_t kr;
 vm_offset_t kmem_buf;
 vm_size_t tbuflen;

 *addr = ((void*)0);
 if (buf == ((void*)0) || buflen == 0)
  return;

 tbuflen = vm_map_round_page(buflen,
        vm_map_page_mask(ipc_kernel_map));
 kr = vm_allocate_kernel(ipc_kernel_map, &kmem_buf, tbuflen, VM_FLAGS_ANYWHERE, VM_KERN_MEMORY_FILE);
 if (kr != 0) {
  printf("nfs_gss_mach_alloc_buffer: vm_allocate failed\n");
  return;
 }

 kr = vm_map_wire_kernel(ipc_kernel_map,
    vm_map_trunc_page(kmem_buf,
        vm_map_page_mask(ipc_kernel_map)),
    vm_map_round_page(kmem_buf + tbuflen,
        vm_map_page_mask(ipc_kernel_map)),
  VM_PROT_READ|VM_PROT_WRITE, VM_KERN_MEMORY_FILE, FALSE);
 if (kr != 0) {
  printf("nfs_gss_mach_alloc_buffer: vm_map_wire failed\n");
  return;
 }

 bcopy(buf, (void *) kmem_buf, buflen);



 kr = vm_map_unwire(ipc_kernel_map,
      vm_map_trunc_page(kmem_buf,
          vm_map_page_mask(ipc_kernel_map)),
      vm_map_round_page(kmem_buf + tbuflen,
          vm_map_page_mask(ipc_kernel_map)),
      FALSE);
 if (kr != 0) {
  printf("nfs_gss_mach_alloc_buffer: vm_map_unwire failed\n");
  return;
 }

 kr = vm_map_copyin(ipc_kernel_map, (vm_map_address_t) kmem_buf,
  (vm_map_size_t) buflen, TRUE, addr);
 if (kr != 0) {
  printf("nfs_gss_mach_alloc_buffer: vm_map_copyin failed\n");
  return;
 }
}
