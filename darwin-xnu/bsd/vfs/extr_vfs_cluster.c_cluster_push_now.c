
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vm_offset_t ;
typedef int upl_t ;
typedef int upl_size_t ;
typedef int upl_page_info_t ;
typedef int upl_offset_t ;
struct clios {int dummy; } ;
struct cl_extent {int b_addr; scalar_t__ e_addr; } ;
typedef int off_t ;
typedef scalar_t__ kern_return_t ;
typedef int buf_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_6__ {int v_flag; } ;


 int CL_AGE ;
 int CL_ASYNC ;
 int CL_CLOSE ;
 int CL_COMMIT ;
 int CL_ENCRYPTED ;
 int CL_NOCACHE ;
 int CL_PASSIVE ;
 int CL_THROTTLE ;
 int DBG_FSRW ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int FSDBG_CODE (int ,int) ;
 int IO_CLOSE ;
 int IO_NOCACHE ;
 int IO_PASSIVE ;
 int IO_SKIP_ENCRYPTION ;
 int IO_SYNC ;
 int KERNEL_DEBUG (int,int,int,int,int,int ) ;
 scalar_t__ KERN_SUCCESS ;
 int PAGE_MASK ;
 int PAGE_SIZE ;
 int PAGE_SIZE_64 ;
 int UPL_ABORT_FREE_ON_EMPTY ;
 int UPL_COPYOUT_FROM ;
 int UPL_KEEPCACHED ;
 int UPL_MSYNC ;
 int UPL_RET_ONLY_DIRTY ;
 int UPL_SET_LITE ;
 int UPL_VNODE_PAGER ;
 int UPL_WILL_BE_DUMPED ;
 int VM_KERN_MEMORY_FILE ;
 int VNOCACHE_DATA ;
 int cluster_io (TYPE_1__*,int,int,int,int,int,int ,struct clios*,int (*) (buf_t,void*),void*) ;
 int min (int,int) ;
 int panic (char*) ;
 scalar_t__ ubc_create_upl_kernel (TYPE_1__*,int,int,int*,int **,int,int ) ;
 int ubc_upl_abort (int,int ) ;
 int ubc_upl_abort_range (int,int,int,int ) ;
 scalar_t__ upl_dirty_page (int *,int) ;
 scalar_t__ upl_page_present (int *,int) ;
 int vnode_pageout (TYPE_1__*,int *,int ,int,int ,int,int*) ;

__attribute__((used)) static int
cluster_push_now(vnode_t vp, struct cl_extent *cl, off_t EOF, int flags,
   int (*callback)(buf_t, void *), void *callback_arg, boolean_t vm_initiated)
{
 upl_page_info_t *pl;
 upl_t upl;
 vm_offset_t upl_offset;
 int upl_size;
 off_t upl_f_offset;
        int pages_in_upl;
 int start_pg;
 int last_pg;
 int io_size;
 int io_flags;
 int upl_flags;
 int bflag;
 int size;
 int error = 0;
 int retval;
 kern_return_t kret;

 if (flags & IO_PASSIVE)
  bflag = CL_PASSIVE;
 else
  bflag = 0;

 if (flags & IO_SKIP_ENCRYPTION)
  bflag |= CL_ENCRYPTED;

 KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 51)) | DBG_FUNC_START,
       (int)cl->b_addr, (int)cl->e_addr, (int)EOF, flags, 0);

 if ((pages_in_upl = (int)(cl->e_addr - cl->b_addr)) == 0) {
         KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 51)) | DBG_FUNC_END, 1, 0, 0, 0, 0);

         return (0);
 }
 upl_size = pages_in_upl * PAGE_SIZE;
 upl_f_offset = (off_t)(cl->b_addr * PAGE_SIZE_64);

 if (upl_f_offset + upl_size >= EOF) {

         if (upl_f_offset >= EOF) {





          KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 51)) | DBG_FUNC_END, 1, 1, 0, 0, 0);

          return(0);
  }
  size = EOF - upl_f_offset;

  upl_size = (size + (PAGE_SIZE - 1)) & ~PAGE_MASK;
  pages_in_upl = upl_size / PAGE_SIZE;
 } else
         size = upl_size;


 if (vm_initiated) {
         vnode_pageout(vp, ((void*)0), (upl_offset_t)0, upl_f_offset, (upl_size_t)upl_size,
         UPL_MSYNC | UPL_VNODE_PAGER | UPL_KEEPCACHED, &error);

  return (error);
 }
 KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 41)) | DBG_FUNC_START, upl_size, size, 0, 0, 0);
 if ((vp->v_flag & VNOCACHE_DATA) || (flags & IO_NOCACHE))
         upl_flags = UPL_COPYOUT_FROM | UPL_RET_ONLY_DIRTY | UPL_SET_LITE | UPL_WILL_BE_DUMPED;
 else
         upl_flags = UPL_COPYOUT_FROM | UPL_RET_ONLY_DIRTY | UPL_SET_LITE;

 kret = ubc_create_upl_kernel(vp,
          upl_f_offset,
          upl_size,
          &upl,
           &pl,
           upl_flags,
           VM_KERN_MEMORY_FILE);
 if (kret != KERN_SUCCESS)
         panic("cluster_push: failed to get pagelist");

 KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 41)) | DBG_FUNC_END, upl, upl_f_offset, 0, 0, 0);
 for (last_pg = pages_in_upl - 1; last_pg >= 0; last_pg--) {
         if (upl_page_present(pl, last_pg))
          break;
 }
 pages_in_upl = last_pg + 1;

 if (pages_in_upl == 0) {
         ubc_upl_abort(upl, 0);

  KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 51)) | DBG_FUNC_END, 1, 2, 0, 0, 0);
  return(0);
 }

 for (last_pg = 0; last_pg < pages_in_upl; ) {





  for (start_pg = last_pg; start_pg < pages_in_upl; start_pg++) {
   if (upl_dirty_page(pl, start_pg))
    break;
   if (upl_page_present(pl, start_pg))





           ubc_upl_abort_range(upl, start_pg * PAGE_SIZE, PAGE_SIZE, UPL_ABORT_FREE_ON_EMPTY);
  }
  if (start_pg >= pages_in_upl)



          break;
  if (start_pg > last_pg)



   size -= ((start_pg - last_pg) * PAGE_SIZE);




  for (last_pg = start_pg; last_pg < pages_in_upl; last_pg++) {
   if (!upl_dirty_page(pl, last_pg))
    break;
  }
  upl_offset = start_pg * PAGE_SIZE;

  io_size = min(size, (last_pg - start_pg) * PAGE_SIZE);

  io_flags = CL_THROTTLE | CL_COMMIT | CL_AGE | bflag;

  if ( !(flags & IO_SYNC))
          io_flags |= CL_ASYNC;

  if (flags & IO_CLOSE)
          io_flags |= CL_CLOSE;

  if (flags & IO_NOCACHE)
   io_flags |= CL_NOCACHE;

  retval = cluster_io(vp, upl, upl_offset, upl_f_offset + upl_offset, io_size,
        io_flags, (buf_t)((void*)0), (struct clios *)((void*)0), callback, callback_arg);

  if (error == 0 && retval)
          error = retval;

  size -= io_size;
 }
 KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 51)) | DBG_FUNC_END, 1, 3, error, 0, 0);

 return(error);
}
