
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vnode_pager_t ;
typedef int vm_size_t ;
typedef scalar_t__ vm_object_offset_t ;
typedef int * upl_t ;
typedef int upl_size_t ;
typedef int upl_offset_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_4__ {int mo_control; } ;
struct TYPE_5__ {TYPE_1__ vn_pgr_hdr; int vnode_handle; } ;


 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 int PAGE_MASK ;
 int UPL_CLEAN_IN_PLACE ;
 int UPL_IOSTREAMING ;
 int UPL_NO_SYNC ;
 int UPL_SET_INTERNAL ;
 int VM_KERN_MEMORY_NONE ;
 int assert (int) ;
 scalar_t__ memory_object_upl_request (int ,scalar_t__,int,int **,int *,unsigned int*,int,int ) ;
 int upl_abort (int *,int ) ;
 int upl_deallocate (int *) ;
 int vnode_pagein (int ,int *,int ,scalar_t__,int,int,int*) ;

kern_return_t
vnode_pager_cluster_read(
 vnode_pager_t vnode_object,
 vm_object_offset_t base_offset,
 vm_object_offset_t offset,
 uint32_t io_streaming,
 vm_size_t cnt)
{
 int local_error = 0;
 int kret;
 int flags = 0;

 assert(! (cnt & PAGE_MASK));

 if (io_streaming)
  flags |= UPL_IOSTREAMING;

 assert((upl_size_t) cnt == cnt);
 kret = vnode_pagein(vnode_object->vnode_handle,
       (upl_t) ((void*)0),
       (upl_offset_t) (offset - base_offset),
       base_offset,
       (upl_size_t) cnt,
       flags,
       &local_error);






 if (kret == 1) {
  int uplflags;
  upl_t upl = ((void*)0);
  unsigned int count = 0;
  kern_return_t kr;

  uplflags = (UPL_NO_SYNC |
       UPL_CLEAN_IN_PLACE |
       UPL_SET_INTERNAL);
  count = 0;
  assert((upl_size_t) cnt == cnt);
  kr = memory_object_upl_request(vnode_object->vn_pgr_hdr.mo_control,
            base_offset, (upl_size_t) cnt,
            &upl, ((void*)0), &count, uplflags, VM_KERN_MEMORY_NONE);
  if (kr == KERN_SUCCESS) {
   upl_abort(upl, 0);
   upl_deallocate(upl);
  } else {







  }

  return KERN_FAILURE;
 }

 return KERN_SUCCESS;

}
