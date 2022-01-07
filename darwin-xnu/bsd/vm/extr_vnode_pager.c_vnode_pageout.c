
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_object_offset_t ;
typedef int vfs_context_t ;
typedef int * upl_t ;
typedef int upl_size_t ;
typedef int upl_page_info_t ;
typedef int upl_offset_t ;
struct vnode {scalar_t__ v_tag; TYPE_2__* v_mount; } ;
typedef int pager_return_t ;
typedef int off_t ;
typedef int daddr64_t ;
struct TYPE_4__ {TYPE_1__* mnt_vtable; } ;
struct TYPE_3__ {int vfc_vfsflags; } ;


 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int DBG_MACH_VM ;
 int EINVAL ;
 int KDEBUG_TRACE ;
 int KERNEL_DEBUG_CONSTANT_IST (int ,int,int,int,int ,int ,int ) ;
 scalar_t__ KERN_SUCCESS ;
 int MACHDBG_CODE (int ,int) ;
 int PAGER_ERROR ;
 int PAGER_SUCCESS ;
 int PAGE_SIZE ;
 scalar_t__ UBCINFOEXISTS (struct vnode*) ;
 int UPL_ABORT_FREE_ON_EMPTY ;
 int UPL_COMMIT_FREE_ON_EMPTY ;
 int UPL_MSYNC ;
 int UPL_NOCOMMIT ;
 int UPL_RET_ONLY_DIRTY ;
 int UPL_UBC_MSYNC ;
 int UPL_UBC_PAGEOUT ;
 int UPL_VNODE_PAGER ;
 int VFC_VFSVNOP_PAGEOUTV2 ;
 int VM_KERN_MEMORY_FILE ;
 int VNOP_PAGEOUT (struct vnode*,int *,int,int ,int,int,int ) ;
 scalar_t__ VT_NFS ;
 int buf_invalblkno (struct vnode*,int ,int ) ;
 int nfs_buf_page_inval (struct vnode*,int ) ;
 scalar_t__ ubc_create_upl_kernel (struct vnode*,scalar_t__,int,int **,int **,int,int ) ;
 scalar_t__ ubc_getsize (struct vnode*) ;
 int ubc_offtoblk (struct vnode*,int ) ;
 int ubc_upl_abort_range (int *,int,int,int ) ;
 int ubc_upl_commit_range (int *,int,int,int ) ;
 int * ubc_upl_pageinfo (int *) ;
 int upl_dirty_page (int *,int) ;
 scalar_t__ upl_page_present (int *,int) ;
 int vfs_context_current () ;

pager_return_t
vnode_pageout(struct vnode *vp,
 upl_t upl,
 upl_offset_t upl_offset,
 vm_object_offset_t f_offset,
 upl_size_t size,
 int flags,
 int *errorp)
{
 int result = PAGER_SUCCESS;
 int error = 0;
 int error_ret = 0;
 daddr64_t blkno;
 int isize;
 int pg_index;
 int base_index;
 upl_offset_t offset;
 upl_page_info_t *pl;
 vfs_context_t ctx = vfs_context_current();

 isize = (int)size;

 if (isize <= 0) {
         result = PAGER_ERROR;
  error_ret = EINVAL;
  goto out;
 }

 if (UBCINFOEXISTS(vp) == 0) {
  result = PAGER_ERROR;
  error_ret = EINVAL;

  if (upl && !(flags & UPL_NOCOMMIT))
          ubc_upl_abort_range(upl, upl_offset, size, UPL_ABORT_FREE_ON_EMPTY);
  goto out;
 }
 if ( !(flags & UPL_VNODE_PAGER)) {





  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
   (MACHDBG_CODE(DBG_MACH_VM, 1)) | DBG_FUNC_START,
   size, 1, 0, 0, 0);

  if ( (error_ret = VNOP_PAGEOUT(vp, upl, upl_offset, (off_t)f_offset,
            (size_t)size, flags, ctx)) )
   result = PAGER_ERROR;

  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
   (MACHDBG_CODE(DBG_MACH_VM, 1)) | DBG_FUNC_END,
   size, 1, 0, 0, 0);

  goto out;
 }
 if (upl == ((void*)0)) {
  int request_flags;

  if (vp->v_mount->mnt_vtable->vfc_vfsflags & VFC_VFSVNOP_PAGEOUTV2) {







   KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
    (MACHDBG_CODE(DBG_MACH_VM, 1)) | DBG_FUNC_START,
    size, (int)f_offset, 0, 0, 0);

   if ( (error_ret = VNOP_PAGEOUT(vp, ((void*)0), upl_offset, (off_t)f_offset,
             size, flags, ctx)) ) {
    result = PAGER_ERROR;
   }
   KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
    (MACHDBG_CODE(DBG_MACH_VM, 1)) | DBG_FUNC_END,
    size, 0, 0, 0, 0);

   goto out;
  }
  if (flags & UPL_MSYNC)
   request_flags = UPL_UBC_MSYNC | UPL_RET_ONLY_DIRTY;
  else
   request_flags = UPL_UBC_PAGEOUT | UPL_RET_ONLY_DIRTY;

         if (ubc_create_upl_kernel(vp, f_offset, size, &upl, &pl, request_flags, VM_KERN_MEMORY_FILE) != KERN_SUCCESS) {
   result = PAGER_ERROR;
   error_ret = EINVAL;
   goto out;
  }
  upl_offset = 0;
 } else
  pl = ubc_upl_pageinfo(upl);







 base_index = upl_offset / PAGE_SIZE;

 for (pg_index = (upl_offset + isize) / PAGE_SIZE; pg_index > base_index;) {
         if (upl_page_present(pl, --pg_index))
          break;
  if (pg_index == base_index) {




          if ( !(flags & UPL_NOCOMMIT))
           ubc_upl_abort_range(upl, upl_offset, isize, UPL_ABORT_FREE_ON_EMPTY);

   goto out;
  }
 }
 isize = ((pg_index + 1) - base_index) * PAGE_SIZE;
 if (ubc_getsize(vp) == 0) {






  for (offset = upl_offset; isize; isize -= PAGE_SIZE, offset += PAGE_SIZE) {






   {
           blkno = ubc_offtoblk(vp, (off_t)f_offset);
           error = buf_invalblkno(vp, blkno, 0);
   }
   if (error) {
           if ( !(flags & UPL_NOCOMMIT))
            ubc_upl_abort_range(upl, offset, PAGE_SIZE, UPL_ABORT_FREE_ON_EMPTY);
    if (error_ret == 0)
            error_ret = error;
    result = PAGER_ERROR;

   } else if ( !(flags & UPL_NOCOMMIT)) {
           ubc_upl_commit_range(upl, offset, PAGE_SIZE, UPL_COMMIT_FREE_ON_EMPTY);
   }
   f_offset += PAGE_SIZE;
  }
  goto out;
 }

 offset = upl_offset;
 pg_index = base_index;

 while (isize) {
  int xsize;
  int num_of_pages;

  if ( !upl_page_present(pl, pg_index)) {





          f_offset += PAGE_SIZE;
   offset += PAGE_SIZE;
   isize -= PAGE_SIZE;
   pg_index++;

   continue;
  }
  if ( !upl_dirty_page(pl, pg_index)) {
   {
           blkno = ubc_offtoblk(vp, (off_t)f_offset);
           error = buf_invalblkno(vp, blkno, 0);
   }
   if (error) {
           if ( !(flags & UPL_NOCOMMIT))
            ubc_upl_abort_range(upl, offset, PAGE_SIZE, UPL_ABORT_FREE_ON_EMPTY);
    if (error_ret == 0)
            error_ret = error;
    result = PAGER_ERROR;

   } else if ( !(flags & UPL_NOCOMMIT)) {
           ubc_upl_commit_range(upl, offset, PAGE_SIZE, UPL_COMMIT_FREE_ON_EMPTY);
   }
          f_offset += PAGE_SIZE;
   offset += PAGE_SIZE;
   isize -= PAGE_SIZE;
   pg_index++;

   continue;
  }
  num_of_pages = 1;
  xsize = isize - PAGE_SIZE;

  while (xsize) {
   if ( !upl_dirty_page(pl, pg_index + num_of_pages))
    break;
   num_of_pages++;
   xsize -= PAGE_SIZE;
  }
  xsize = num_of_pages * PAGE_SIZE;

  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
   (MACHDBG_CODE(DBG_MACH_VM, 1)) | DBG_FUNC_START,
   xsize, (int)f_offset, 0, 0, 0);

  if ( (error = VNOP_PAGEOUT(vp, upl, offset, (off_t)f_offset,
        xsize, flags, ctx)) ) {
          if (error_ret == 0)
                  error_ret = error;
   result = PAGER_ERROR;
  }
  KERNEL_DEBUG_CONSTANT_IST(KDEBUG_TRACE,
   (MACHDBG_CODE(DBG_MACH_VM, 1)) | DBG_FUNC_END,
   xsize, 0, 0, 0, 0);

         f_offset += xsize;
  offset += xsize;
  isize -= xsize;
  pg_index += num_of_pages;
 }
out:
 if (errorp)
  *errorp = error_ret;

 return (result);
}
