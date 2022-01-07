
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int user_size_t ;
typedef int upl_t ;
typedef int upl_page_info_t ;
typedef scalar_t__ u_int32_t ;
struct uio {int uio_offset; } ;
struct clios {int dummy; } ;
typedef scalar_t__ kern_return_t ;
typedef int buf_t ;
typedef int addr64_t ;


 int CL_NOCACHE ;
 int CL_PASSIVE ;
 int CL_READ ;
 int EINVAL ;
 int IO_NOCACHE ;
 int IO_PASSIVE ;
 scalar_t__ KERN_SUCCESS ;
 int PAGE_MASK_64 ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int UPL_ABORT_DUMP_PAGES ;
 int UPL_ABORT_FREE_ON_EMPTY ;
 int UPL_FILE_IO ;
 int UPL_SET_LITE ;
 int UPL_WILL_MODIFY ;
 int VM_KERN_MEMORY_FILE ;
 int cluster_io (int ,int ,int ,int,int ,int,int ,struct clios*,int (*) (buf_t,void*),void*) ;
 int copypv (int,int,scalar_t__,int) ;
 scalar_t__ ubc_create_upl_kernel (int ,int,int ,int *,int **,int,int ) ;
 int ubc_upl_abort_range (int ,int ,int ,int) ;
 int uio_update (struct uio*,int ) ;
 scalar_t__ upl_dirty_page (int *,int ) ;
 scalar_t__ upl_phys_page (int *,int ) ;
 scalar_t__ upl_valid_page (int *,int ) ;

__attribute__((used)) static int
cluster_align_phys_io(vnode_t vp, struct uio *uio, addr64_t usr_paddr, u_int32_t xsize, int flags, int (*callback)(buf_t, void *), void *callback_arg)
{
        upl_page_info_t *pl;
        upl_t upl;
        addr64_t ubc_paddr;
        kern_return_t kret;
        int error = 0;
 int did_read = 0;
 int abort_flags;
 int upl_flags;
 int bflag;

 if (flags & IO_PASSIVE)
  bflag = CL_PASSIVE;
 else
  bflag = 0;

 if (flags & IO_NOCACHE)
  bflag |= CL_NOCACHE;

 upl_flags = UPL_SET_LITE;

 if ( !(flags & CL_READ) ) {





  upl_flags |= UPL_WILL_MODIFY;
 } else {





  upl_flags |= UPL_FILE_IO;
 }
        kret = ubc_create_upl_kernel(vp,
                              uio->uio_offset & ~PAGE_MASK_64,
                              PAGE_SIZE,
                              &upl,
                              &pl,
                              upl_flags,
                              VM_KERN_MEMORY_FILE);

        if (kret != KERN_SUCCESS)
                return(EINVAL);

        if (!upl_valid_page(pl, 0)) {



                error = cluster_io(vp, upl, 0, uio->uio_offset & ~PAGE_MASK_64, PAGE_SIZE,
       CL_READ | bflag, (buf_t)((void*)0), (struct clios *)((void*)0), callback, callback_arg);
                if (error) {
                          ubc_upl_abort_range(upl, 0, PAGE_SIZE, UPL_ABORT_DUMP_PAGES | UPL_ABORT_FREE_ON_EMPTY);

                          return(error);
                }
  did_read = 1;
        }
        ubc_paddr = ((addr64_t)upl_phys_page(pl, 0) << PAGE_SHIFT) + (addr64_t)(uio->uio_offset & PAGE_MASK_64);







 if (flags & CL_READ)

  copypv(ubc_paddr, usr_paddr, xsize, 2 | 1 | 4);
 else

  copypv(usr_paddr, ubc_paddr, xsize, 2 | 1 | 8);

 if ( !(flags & CL_READ) || (upl_valid_page(pl, 0) && upl_dirty_page(pl, 0))) {



  error = cluster_io(vp, upl, 0, uio->uio_offset & ~PAGE_MASK_64, PAGE_SIZE,
       bflag, (buf_t)((void*)0), (struct clios *)((void*)0), callback, callback_arg);
 }
 if (error == 0)
         uio_update(uio, (user_size_t)xsize);

 if (did_read)
         abort_flags = UPL_ABORT_FREE_ON_EMPTY;
 else
         abort_flags = UPL_ABORT_FREE_ON_EMPTY | UPL_ABORT_DUMP_PAGES;

 ubc_upl_abort_range(upl, 0, PAGE_SIZE, abort_flags);

 return (error);
}
