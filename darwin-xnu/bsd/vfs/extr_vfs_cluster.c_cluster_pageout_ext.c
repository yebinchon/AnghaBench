
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
typedef int upl_t ;
typedef scalar_t__ upl_offset_t ;
struct clios {int dummy; } ;
typedef int off_t ;
typedef int buf_t ;
struct TYPE_6__ {TYPE_1__* v_mount; } ;
struct TYPE_5__ {int mnt_flag; } ;


 int CL_ASYNC ;
 int CL_COMMIT ;
 int CL_ENCRYPTED ;
 int CL_KEEPCACHED ;
 int CL_PAGEOUT ;
 int CL_THROTTLE ;
 int DBG_FSRW ;
 int DBG_FUNC_NONE ;
 int EINVAL ;
 int EROFS ;
 int FSDBG_CODE (int ,int) ;
 int KERNEL_DEBUG (int,int,int,int,int,int ) ;
 int MNT_RDONLY ;
 int PAGE_MASK ;
 int PAGE_MASK_64 ;
 int PAGE_SIZE ;
 int UPL_ABORT_FREE_ON_EMPTY ;
 int UPL_IOSYNC ;
 int UPL_KEEPCACHED ;
 int UPL_NOCOMMIT ;
 int UPL_PAGING_ENCRYPTED ;
 int cluster_io (TYPE_2__*,int ,scalar_t__,int,int,int,int ,struct clios*,int (*) (buf_t,void*),void*) ;
 int ubc_upl_abort_range (int ,scalar_t__,int,int ) ;

int
cluster_pageout_ext(vnode_t vp, upl_t upl, upl_offset_t upl_offset, off_t f_offset,
  int size, off_t filesize, int flags, int (*callback)(buf_t, void *), void *callback_arg)
{
 int io_size;
 int rounded_size;
        off_t max_size;
 int local_flags;

 local_flags = CL_PAGEOUT | CL_THROTTLE;

 if ((flags & UPL_IOSYNC) == 0)
  local_flags |= CL_ASYNC;
 if ((flags & UPL_NOCOMMIT) == 0)
  local_flags |= CL_COMMIT;
 if ((flags & UPL_KEEPCACHED))
         local_flags |= CL_KEEPCACHED;
 if (flags & UPL_PAGING_ENCRYPTED)
  local_flags |= CL_ENCRYPTED;


 KERNEL_DEBUG((FSDBG_CODE(DBG_FSRW, 52)) | DBG_FUNC_NONE,
       (int)f_offset, size, (int)filesize, local_flags, 0);






 if (size <= 0)
  return (EINVAL);

        if (vp->v_mount->mnt_flag & MNT_RDONLY) {
  if (local_flags & CL_COMMIT)
          ubc_upl_abort_range(upl, upl_offset, size, UPL_ABORT_FREE_ON_EMPTY);
  return (EROFS);
 }






 if (f_offset < 0 || f_offset >= filesize ||
    (f_offset & PAGE_MASK_64) || (size & PAGE_MASK)) {
  if (local_flags & CL_COMMIT)
   ubc_upl_abort_range(upl, upl_offset, size, UPL_ABORT_FREE_ON_EMPTY);
  return (EINVAL);
 }
 max_size = filesize - f_offset;

 if (size < max_size)
         io_size = size;
 else
         io_size = max_size;

 rounded_size = (io_size + (PAGE_SIZE - 1)) & ~PAGE_MASK;

 if (size > rounded_size) {
  if (local_flags & CL_COMMIT)
   ubc_upl_abort_range(upl, upl_offset + rounded_size, size - rounded_size,
     UPL_ABORT_FREE_ON_EMPTY);
 }
 return (cluster_io(vp, upl, upl_offset, f_offset, io_size,
      local_flags, (buf_t)((void*)0), (struct clios *)((void*)0), callback, callback_arg));
}
