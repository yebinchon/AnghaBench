
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vm_offset_t ;
typedef int upl_t ;
typedef int upl_page_info_t ;
typedef int uint32_t ;
struct clios {int dummy; } ;
typedef int off_t ;
typedef scalar_t__ kern_return_t ;
typedef int buf_t ;
struct TYPE_7__ {int v_mount; } ;


 int CL_AGE ;
 int CL_ASYNC ;
 int CL_COMMIT ;
 int CL_READ ;
 int DBG_FSRW ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int EINVAL ;
 int FSDBG_CODE (int ,int) ;
 int KERNEL_DEBUG (int,int,int,int,int,int ) ;
 scalar_t__ KERN_SUCCESS ;
 int PAGE_MASK ;
 int PAGE_MASK_64 ;
 int PAGE_SIZE ;
 int UBCINFOEXISTS (TYPE_1__*) ;
 int UPL_RET_ONLY_ABSENT ;
 int UPL_ROP_PRESENT ;
 int UPL_SET_LITE ;
 int VM_KERN_MEMORY_FILE ;
 int cluster_io (TYPE_1__*,int,int,int,int,int,int ,struct clios*,int (*) (buf_t,void*),void*) ;
 int cluster_max_io_size (int ,int) ;
 scalar_t__ disk_conditioner_mount_is_ssd (int ) ;
 int speculative_prefetch_max_iosize ;
 scalar_t__ ubc_create_upl_kernel (TYPE_1__*,int,int,int*,int **,int,int ) ;
 int ubc_range_op (TYPE_1__*,int,int,int ,int*) ;
 int ubc_upl_abort (int,int ) ;
 scalar_t__ upl_page_present (int *,int) ;

int
advisory_read_ext(vnode_t vp, off_t filesize, off_t f_offset, int resid, int (*callback)(buf_t, void *), void *callback_arg, int bflag)
{
 upl_page_info_t *pl;
 upl_t upl;
 vm_offset_t upl_offset;
 int upl_size;
 off_t upl_f_offset;
 int start_offset;
 int start_pg;
 int last_pg;
 int pages_in_upl;
 off_t max_size;
 int io_size;
 kern_return_t kret;
 int retval = 0;
 int issued_io;
 int skip_range;
 uint32_t max_io_size;


 if ( !UBCINFOEXISTS(vp))
  return(EINVAL);

 if (resid < 0)
  return(EINVAL);

 max_io_size = cluster_max_io_size(vp->v_mount, CL_READ);





 if (disk_conditioner_mount_is_ssd(vp->v_mount)) {
  if (max_io_size > speculative_prefetch_max_iosize)
   max_io_size = speculative_prefetch_max_iosize;
 }


 KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 60)) | DBG_FUNC_START,
       (int)f_offset, resid, (int)filesize, 0, 0);

 while (resid && f_offset < filesize && retval == 0) {
  start_offset = (int)(f_offset & PAGE_MASK_64);
  upl_f_offset = f_offset - (off_t)start_offset;
  max_size = filesize - f_offset;

  if (resid < max_size)
          io_size = resid;
  else
          io_size = max_size;

  upl_size = (start_offset + io_size + (PAGE_SIZE - 1)) & ~PAGE_MASK;
         if ((uint32_t)upl_size > max_io_size)
          upl_size = max_io_size;

  skip_range = 0;




  ubc_range_op(vp, upl_f_offset, upl_f_offset + upl_size, UPL_ROP_PRESENT, &skip_range);

  if (skip_range) {



          io_size = skip_range - start_offset;

          f_offset += io_size;
   resid -= io_size;

   if (skip_range == upl_size)
           continue;





   start_offset = 0;
   upl_f_offset += skip_range;
   upl_size -= skip_range;
  }
  pages_in_upl = upl_size / PAGE_SIZE;

  KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 61)) | DBG_FUNC_START,
        upl, (int)upl_f_offset, upl_size, start_offset, 0);

  kret = ubc_create_upl_kernel(vp,
          upl_f_offset,
          upl_size,
          &upl,
          &pl,
          UPL_RET_ONLY_ABSENT | UPL_SET_LITE,
          VM_KERN_MEMORY_FILE);
  if (kret != KERN_SUCCESS)
          return(retval);
  issued_io = 0;






  for (last_pg = pages_in_upl - 1; last_pg >= 0; last_pg--) {
          if (upl_page_present(pl, last_pg))
           break;
  }
  pages_in_upl = last_pg + 1;


  KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 61)) | DBG_FUNC_END,
        upl, (int)upl_f_offset, upl_size, start_offset, 0);


  for (last_pg = 0; last_pg < pages_in_upl; ) {






          for (start_pg = last_pg; start_pg < pages_in_upl; start_pg++) {
           if (upl_page_present(pl, start_pg))
            break;
   }







   for (last_pg = start_pg; last_pg < pages_in_upl; last_pg++) {
           if (!upl_page_present(pl, last_pg))
            break;
   }

   if (last_pg > start_pg) {






           upl_offset = start_pg * PAGE_SIZE;
    io_size = (last_pg - start_pg) * PAGE_SIZE;

    if ((off_t)(upl_f_offset + upl_offset + io_size) > filesize)
            io_size = filesize - (upl_f_offset + upl_offset);




    retval = cluster_io(vp, upl, upl_offset, upl_f_offset + upl_offset, io_size,
          CL_ASYNC | CL_READ | CL_COMMIT | CL_AGE | bflag, (buf_t)((void*)0), (struct clios *)((void*)0), callback, callback_arg);

    issued_io = 1;
   }
  }
  if (issued_io == 0)
          ubc_upl_abort(upl, 0);

  io_size = upl_size - start_offset;

  if (io_size > resid)
          io_size = resid;
  f_offset += io_size;
  resid -= io_size;
 }

 KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 60)) | DBG_FUNC_END,
       (int)f_offset, resid, retval, 0, 0);

 return(retval);
}
