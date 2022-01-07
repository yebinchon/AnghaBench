
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int * upl_t ;
typedef scalar_t__ upl_size_t ;
typedef int upl_control_flags_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ kern_return_t ;
typedef int caddr_t ;


 int FALSE ;
 int IO_NOCACHE ;
 int IO_NODELOCKED ;
 int IO_SWAP_DISPATCH ;
 int IO_SYNC ;
 int IO_UNIT ;
 scalar_t__ KERN_SUCCESS ;
 int PAGE_SIZE_64 ;
 int SWAP_READ ;
 int UIO_READ ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int UPL_COPYOUT_FROM ;
 int UPL_IGNORE_VALID_PAGE_CHECK ;
 int UPL_IOSYNC ;
 int UPL_PAGING_ENCRYPTED ;
 int UPL_SET_INTERNAL ;
 int UPL_SET_LITE ;
 int VM_KERN_MEMORY_OSFMK ;
 int kernel_map ;
 int panic (char*,scalar_t__) ;
 int printf (char*,int,...) ;
 int upl_set_iodone (int *,void*) ;
 int vfs_context_kernel () ;
 int vfs_context_proc (int ) ;
 int vfs_context_ucred (int ) ;
 scalar_t__ vm_map_create_upl (int ,scalar_t__,scalar_t__*,int **,int *,unsigned int*,int*,int ) ;
 int vn_rdwr (int ,int ,int ,scalar_t__,scalar_t__,int ,int,int ,int*,int ) ;
 int vnode_pagein (int ,int *,int ,scalar_t__,scalar_t__,int,int*) ;
 int vnode_pageout (int ,int *,int ,scalar_t__,scalar_t__,int,int*) ;

int
vm_swapfile_io(vnode_t vp, uint64_t offset, uint64_t start, int npages, int flags, void *upl_iodone)
{
 int error = 0;
 uint64_t io_size = npages * PAGE_SIZE_64;

 kern_return_t kr = KERN_SUCCESS;
 upl_t upl = ((void*)0);
 unsigned int count = 0;
 upl_control_flags_t upl_create_flags = 0;
 int upl_control_flags = 0;
 upl_size_t upl_size = 0;

 upl_create_flags = UPL_SET_INTERNAL | UPL_SET_LITE;

 if (upl_iodone == ((void*)0))
         upl_control_flags = UPL_IOSYNC;





 if ((flags & SWAP_READ) == FALSE) {
  upl_create_flags |= UPL_COPYOUT_FROM;
 }

 upl_size = io_size;
 kr = vm_map_create_upl( kernel_map,
    start,
    &upl_size,
    &upl,
    ((void*)0),
    &count,
    &upl_create_flags,
    VM_KERN_MEMORY_OSFMK);

 if (kr != KERN_SUCCESS || (upl_size != io_size)) {
  panic("vm_map_create_upl failed with %d\n", kr);
 }

 if (flags & SWAP_READ) {
  vnode_pagein(vp,
         upl,
         0,
         offset,
         io_size,
         upl_control_flags | UPL_IGNORE_VALID_PAGE_CHECK,
         &error);
  if (error) {



   printf("vm_swapfile_io: vnode_pagein failed with %d.\n", error);

  }

 } else {
         upl_set_iodone(upl, upl_iodone);

  vnode_pageout(vp,
         upl,
         0,
         offset,
         io_size,
         upl_control_flags,
         &error);
  if (error) {



   printf("vm_swapfile_io: vnode_pageout failed with %d.\n", error);

  }
 }
 return error;
}
