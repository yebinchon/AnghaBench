
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vm_offset_t ;
typedef int upl_t ;
typedef int upl_page_info_t ;
typedef int u_int32_t ;
typedef int u_int ;
struct uio {int uio_offset; } ;
struct clios {int io_error; int io_mtxp; scalar_t__ io_wanted; scalar_t__ io_issued; scalar_t__ io_completed; } ;
struct cl_readahead {int cl_lastr; int cl_maxra; int cl_lockr; scalar_t__ cl_ralen; } ;
struct cl_extent {int b_addr; int e_addr; } ;
typedef int off_t ;
typedef scalar_t__ kern_return_t ;
typedef int buf_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_12__ {int v_mount; } ;


 int CL_ASYNC ;
 int CL_ENCRYPTED ;
 int CL_NOCACHE ;
 int CL_PASSIVE ;
 int CL_READ ;
 int DBG_FSRW ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int EAGAIN ;
 scalar_t__ FALSE ;
 int FSDBG_CODE (int ,int) ;
 int IOPOL_DEFAULT ;
 int IO_ENCRYPTED ;
 int IO_NOCACHE ;
 int IO_PASSIVE ;
 int IO_RAOFF ;
 int IO_RETURN_ON_THROTTLE ;
 int IO_SKIP_ENCRYPTION ;
 int KERNEL_DEBUG (int,int,int,int,int,int ) ;
 scalar_t__ KERN_SUCCESS ;
 int MAX_PREFETCH (TYPE_1__*,int,int ) ;
 int PAGE_MASK ;
 int PAGE_MASK_64 ;
 int PAGE_SIZE ;
 int PAGE_SIZE_64 ;
 int THROTTLE_LEVEL_TIER2 ;
 int THROTTLE_LEVEL_TIER3 ;
 int THROTTLE_MAX_IOSIZE ;
 scalar_t__ THROTTLE_NOW ;
 scalar_t__ TRUE ;
 int UPL_ABORT_DUMP_PAGES ;
 int UPL_ABORT_FREE_ON_EMPTY ;
 int UPL_COMMIT_CLEAR_DIRTY ;
 int UPL_COMMIT_FREE_ON_EMPTY ;
 int UPL_COMMIT_INACTIVATE ;
 int UPL_COMMIT_SPECULATE ;
 int UPL_FILE_IO ;
 int UPL_SET_LITE ;
 int VM_KERN_MEMORY_FILE ;
 int cl_mtx_attr ;
 int cl_mtx_grp ;
 int cluster_copy_ubc_data_internal (TYPE_1__*,struct uio*,int*,int ,int) ;
 int cluster_copy_upl_data (struct uio*,int,int,int*) ;
 struct cl_readahead* cluster_get_rap (TYPE_1__*) ;
 int cluster_io (TYPE_1__*,int,int,int,int,int,int ,struct clios*,int (*) (buf_t,void*),void*) ;
 int cluster_io_present_in_BC (TYPE_1__*,int) ;
 int cluster_iostate_wait (struct clios*,int ,char*) ;
 scalar_t__ cluster_is_throttled (TYPE_1__*) ;
 int cluster_max_io_size (int ,int) ;
 int cluster_read_ahead (TYPE_1__*,struct cl_extent*,int,struct cl_readahead*,int (*) (buf_t,void*),void*,int) ;
 int cluster_read_prefetch (TYPE_1__*,int,int,int,int (*) (buf_t,void*),void*,int) ;
 int cluster_read_upl_release (int,int,int,int) ;
 int disk_conditioner_mount_is_ssd (int ) ;
 int lck_mtx_destroy (int *,int ) ;
 int lck_mtx_init (int *,int ,int ) ;
 int lck_mtx_unlock (int *) ;
 int panic (char*) ;
 int throttle_get_io_policy (int *) ;
 int throttle_info_update_by_mount (int ) ;
 scalar_t__ ubc_create_upl_kernel (TYPE_1__*,int,int,int*,int **,int,int ) ;
 int ubc_upl_abort_range (int,int,int,int) ;
 int ubc_upl_commit_range (int,int,int,int) ;
 scalar_t__ upl_valid_page (int *,int) ;

__attribute__((used)) static int
cluster_read_copy(vnode_t vp, struct uio *uio, u_int32_t io_req_size, off_t filesize, int flags, int (*callback)(buf_t, void *), void *callback_arg)
{
 upl_page_info_t *pl;
 upl_t upl;
 vm_offset_t upl_offset;
 u_int32_t upl_size;
 off_t upl_f_offset;
 int start_offset;
 int start_pg;
 int last_pg;
 int uio_last = 0;
 int pages_in_upl;
 off_t max_size;
 off_t last_ioread_offset;
 off_t last_request_offset;
 kern_return_t kret;
 int error = 0;
 int retval = 0;
 u_int32_t size_of_prefetch;
 u_int32_t xsize;
 u_int32_t io_size;
 u_int32_t max_rd_size;
 u_int32_t max_io_size;
 u_int32_t max_prefetch;
 u_int rd_ahead_enabled = 1;
 u_int prefetch_enabled = 1;
 struct cl_readahead * rap;
 struct clios iostate;
 struct cl_extent extent;
 int bflag;
 int take_reference = 1;
 int policy = IOPOL_DEFAULT;
 boolean_t iolock_inited = FALSE;

 KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 32)) | DBG_FUNC_START,
       (int)uio->uio_offset, io_req_size, (int)filesize, flags, 0);

 if (flags & IO_ENCRYPTED) {
  panic ("encrypted blocks will hit UBC!");
 }

 policy = throttle_get_io_policy(((void*)0));

 if (policy == THROTTLE_LEVEL_TIER3 || policy == THROTTLE_LEVEL_TIER2 || (flags & IO_NOCACHE))
  take_reference = 0;

 if (flags & IO_PASSIVE)
  bflag = CL_PASSIVE;
 else
  bflag = 0;

 if (flags & IO_NOCACHE)
  bflag |= CL_NOCACHE;

 if (flags & IO_SKIP_ENCRYPTION)
  bflag |= CL_ENCRYPTED;

 max_io_size = cluster_max_io_size(vp->v_mount, CL_READ);
 max_prefetch = MAX_PREFETCH(vp, max_io_size, disk_conditioner_mount_is_ssd(vp->v_mount));
 max_rd_size = max_prefetch;

 last_request_offset = uio->uio_offset + io_req_size;

 if (last_request_offset > filesize)
         last_request_offset = filesize;

 if ((flags & (IO_RAOFF|IO_NOCACHE)) || ((last_request_offset & ~PAGE_MASK_64) == (uio->uio_offset & ~PAGE_MASK_64))) {
         rd_ahead_enabled = 0;
  rap = ((void*)0);
 } else {
         if (cluster_is_throttled(vp)) {





          rd_ahead_enabled = 0;
   prefetch_enabled = 0;

   max_rd_size = THROTTLE_MAX_IOSIZE;
  }
         if ((rap = cluster_get_rap(vp)) == ((void*)0))
          rd_ahead_enabled = 0;
  else {
   extent.b_addr = uio->uio_offset / PAGE_SIZE_64;
   extent.e_addr = (last_request_offset - 1) / PAGE_SIZE_64;
  }
 }
 if (rap != ((void*)0) && rap->cl_ralen && (rap->cl_lastr == extent.b_addr || (rap->cl_lastr + 1) == extent.b_addr)) {







         last_ioread_offset = (rap->cl_maxra * PAGE_SIZE_64) + PAGE_SIZE_64;

  if (last_ioread_offset < uio->uio_offset)
          last_ioread_offset = (off_t)0;
  else if (last_ioread_offset > last_request_offset)
          last_ioread_offset = last_request_offset;
 } else
         last_ioread_offset = (off_t)0;

 while (io_req_size && uio->uio_offset < filesize && retval == 0) {

  max_size = filesize - uio->uio_offset;

  if ((off_t)(io_req_size) < max_size)
          io_size = io_req_size;
  else
          io_size = max_size;

  if (!(flags & IO_NOCACHE)) {

          while (io_size) {
           u_int32_t io_resid;
    u_int32_t io_requested;
    if (last_request_offset && last_ioread_offset && (size_of_prefetch = (last_request_offset - last_ioread_offset))) {
            if ((last_ioread_offset - uio->uio_offset) <= max_rd_size && prefetch_enabled) {







             if (size_of_prefetch > max_rd_size)
              size_of_prefetch = max_rd_size;

             size_of_prefetch = cluster_read_prefetch(vp, last_ioread_offset, size_of_prefetch, filesize, callback, callback_arg, bflag);

      last_ioread_offset += (off_t)(size_of_prefetch * PAGE_SIZE);

      if (last_ioread_offset > last_request_offset)
              last_ioread_offset = last_request_offset;
     }
    }





    if (last_ioread_offset && io_size > (max_io_size / 4))
            io_resid = (max_io_size / 4);
    else
            io_resid = io_size;

    io_requested = io_resid;

           retval = cluster_copy_ubc_data_internal(vp, uio, (int *)&io_resid, 0, take_reference);

    xsize = io_requested - io_resid;

    io_size -= xsize;
    io_req_size -= xsize;

    if (retval || io_resid)





            break;

    if (rd_ahead_enabled && (io_size == 0 || last_ioread_offset == last_request_offset)) {




            cluster_read_ahead(vp, &extent, filesize, rap, callback, callback_arg, bflag);
    }
   }
   if (retval)
           break;
   if (io_size == 0) {
    if (rap != ((void*)0)) {
            if (extent.e_addr < rap->cl_lastr)
             rap->cl_maxra = 0;
     rap->cl_lastr = extent.e_addr;
    }
           break;
   }




   max_size = filesize - uio->uio_offset;
  }

  iostate.io_completed = 0;
  iostate.io_issued = 0;
  iostate.io_error = 0;
  iostate.io_wanted = 0;

  if ( (flags & IO_RETURN_ON_THROTTLE) ) {
   if (cluster_is_throttled(vp) == THROTTLE_NOW) {
    if ( !cluster_io_present_in_BC(vp, uio->uio_offset)) {







     throttle_info_update_by_mount(vp->v_mount);

     retval = EAGAIN;
     break;
    }
   }
  }
  start_offset = (int)(uio->uio_offset & PAGE_MASK_64);
  upl_f_offset = uio->uio_offset - (off_t)start_offset;

         if (io_size > max_rd_size)
          io_size = max_rd_size;

  upl_size = (start_offset + io_size + (PAGE_SIZE - 1)) & ~PAGE_MASK;

  if (flags & IO_NOCACHE) {
          if (upl_size > max_io_size)
           upl_size = max_io_size;
  } else {
          if (upl_size > max_io_size / 4) {
           upl_size = max_io_size / 4;
    upl_size &= ~PAGE_MASK;

    if (upl_size == 0)
     upl_size = PAGE_SIZE;
   }
  }
  pages_in_upl = upl_size / PAGE_SIZE;

  KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 33)) | DBG_FUNC_START,
        upl, (int)upl_f_offset, upl_size, start_offset, 0);

  kret = ubc_create_upl_kernel(vp,
          upl_f_offset,
          upl_size,
          &upl,
          &pl,
          UPL_FILE_IO | UPL_SET_LITE,
          VM_KERN_MEMORY_FILE);
  if (kret != KERN_SUCCESS)
   panic("cluster_read_copy: failed to get pagelist");

  KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 33)) | DBG_FUNC_END,
        upl, (int)upl_f_offset, upl_size, start_offset, 0);







  for (start_pg = 0; start_pg < pages_in_upl; start_pg++) {
   if (!upl_valid_page(pl, start_pg))
    break;
  }







  for (last_pg = start_pg; last_pg < pages_in_upl; last_pg++) {
   if (upl_valid_page(pl, last_pg))
    break;
  }

  if (start_pg < last_pg) {






   if (iolock_inited == FALSE) {
    lck_mtx_init(&iostate.io_mtxp, cl_mtx_grp, cl_mtx_attr);

    iolock_inited = TRUE;
   }
   upl_offset = start_pg * PAGE_SIZE;
   io_size = (last_pg - start_pg) * PAGE_SIZE;

   if ((off_t)(upl_f_offset + upl_offset + io_size) > filesize)
           io_size = filesize - (upl_f_offset + upl_offset);





   error = cluster_io(vp, upl, upl_offset, upl_f_offset + upl_offset,
        io_size, CL_READ | CL_ASYNC | bflag, (buf_t)((void*)0), &iostate, callback, callback_arg);

   if (rap) {
                                if (extent.e_addr < rap->cl_maxra) {






                                        rap->cl_maxra = 0;
                               }
                        }
  }
  if (error == 0) {






   u_int val_size;

          for (uio_last = last_pg; uio_last < pages_in_upl; uio_last++) {
           if (!upl_valid_page(pl, uio_last))
            break;
   }
   if (uio_last < pages_in_upl) {






           ubc_upl_abort_range(upl, uio_last * PAGE_SIZE,
          (pages_in_upl - uio_last) * PAGE_SIZE, UPL_ABORT_FREE_ON_EMPTY);
   }






   val_size = (uio_last * PAGE_SIZE) - start_offset;

   if (val_size > max_size)
           val_size = max_size;

   if (val_size > io_req_size)
           val_size = io_req_size;

   if ((uio->uio_offset + val_size) > last_ioread_offset)
           last_ioread_offset = uio->uio_offset + val_size;

   if ((size_of_prefetch = (last_request_offset - last_ioread_offset)) && prefetch_enabled) {

           if ((last_ioread_offset - (uio->uio_offset + val_size)) <= upl_size) {







            if (size_of_prefetch > max_rd_size)
             size_of_prefetch = max_rd_size;

     size_of_prefetch = cluster_read_prefetch(vp, last_ioread_offset, size_of_prefetch, filesize, callback, callback_arg, bflag);

     last_ioread_offset += (off_t)(size_of_prefetch * PAGE_SIZE);

     if (last_ioread_offset > last_request_offset)
             last_ioread_offset = last_request_offset;
    }

   } else if ((uio->uio_offset + val_size) == last_request_offset) {






           if (rd_ahead_enabled)
     cluster_read_ahead(vp, &extent, filesize, rap, callback, callback_arg, bflag);

    if (rap != ((void*)0)) {
            if (extent.e_addr < rap->cl_lastr)
             rap->cl_maxra = 0;
     rap->cl_lastr = extent.e_addr;
    }
   }
   if (iolock_inited == TRUE)
    cluster_iostate_wait(&iostate, 0, "cluster_read_copy");

   if (iostate.io_error)
           error = iostate.io_error;
   else {
           u_int32_t io_requested;

           io_requested = val_size;

           retval = cluster_copy_upl_data(uio, upl, start_offset, (int *)&io_requested);

    io_req_size -= (val_size - io_requested);
   }
  } else {
   if (iolock_inited == TRUE)
    cluster_iostate_wait(&iostate, 0, "cluster_read_copy");
  }
  if (start_pg < last_pg) {






          io_size = (last_pg - start_pg) * PAGE_SIZE;

   KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 35)) | DBG_FUNC_START, upl, start_pg * PAGE_SIZE, io_size, error, 0);

   if (error || (flags & IO_NOCACHE))
           ubc_upl_abort_range(upl, start_pg * PAGE_SIZE, io_size,
          UPL_ABORT_DUMP_PAGES | UPL_ABORT_FREE_ON_EMPTY);
   else {
    int commit_flags = UPL_COMMIT_CLEAR_DIRTY | UPL_COMMIT_FREE_ON_EMPTY;

    if (take_reference)
     commit_flags |= UPL_COMMIT_INACTIVATE;
    else
     commit_flags |= UPL_COMMIT_SPECULATE;

           ubc_upl_commit_range(upl, start_pg * PAGE_SIZE, io_size, commit_flags);
   }
   KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 35)) | DBG_FUNC_END, upl, start_pg * PAGE_SIZE, io_size, error, 0);
  }
  if ((last_pg - start_pg) < pages_in_upl) {





   if (error)
    ubc_upl_abort_range(upl, 0, upl_size, UPL_ABORT_FREE_ON_EMPTY);
   else {

    KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 35)) | DBG_FUNC_START,
          upl, -1, pages_in_upl - (last_pg - start_pg), 0, 0);





    cluster_read_upl_release(upl, 0, start_pg, take_reference);





    cluster_read_upl_release(upl, last_pg, uio_last, take_reference);

    KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 35)) | DBG_FUNC_END, upl, -1, -1, 0, 0);
   }
  }
  if (retval == 0)
          retval = error;

  if (io_req_size) {
          if (cluster_is_throttled(vp)) {





           rd_ahead_enabled = 0;
    prefetch_enabled = 0;
    max_rd_size = THROTTLE_MAX_IOSIZE;
   } else {
           if (max_rd_size == THROTTLE_MAX_IOSIZE) {



     if (policy != THROTTLE_LEVEL_TIER3 && policy != THROTTLE_LEVEL_TIER2) {
      if (rap != ((void*)0))
       rd_ahead_enabled = 1;
      prefetch_enabled = 1;
     }
     max_rd_size = max_prefetch;
     last_ioread_offset = 0;
    }
   }
  }
 }
 if (iolock_inited == TRUE) {
  cluster_iostate_wait(&iostate, 0, "cluster_read_copy");

  lck_mtx_destroy(&iostate.io_mtxp, cl_mtx_grp);
 }
 if (rap != ((void*)0)) {
         KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 32)) | DBG_FUNC_END,
        (int)uio->uio_offset, io_req_size, rap->cl_lastr, retval, 0);

         lck_mtx_unlock(&rap->cl_lockr);
 } else {
         KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 32)) | DBG_FUNC_END,
        (int)uio->uio_offset, io_req_size, 0, retval, 0);
 }

 return (retval);
}
