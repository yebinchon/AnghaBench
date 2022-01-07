
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int upl_t ;


 int B_CACHE ;
 int B_PAGEIO ;
 int B_PHYS ;
 int B_READ ;
 int ENXIO ;
 int UPL_ABORT_DUMP_PAGES ;
 int UPL_ABORT_ERROR ;
 int UPL_ABORT_FREE_ON_EMPTY ;
 int UPL_COMMIT_FREE_ON_EMPTY ;
 int ubc_upl_abort_range (int ,int,int,int) ;
 int ubc_upl_commit_range (int ,int,int,int ) ;
 scalar_t__ vnode_isswap (int ) ;

__attribute__((used)) static int
cluster_ioerror(upl_t upl, int upl_offset, int abort_size, int error, int io_flags, vnode_t vp)
{
        int upl_abort_code = 0;
 int page_in = 0;
 int page_out = 0;

 if ((io_flags & (B_PHYS | B_CACHE)) == (B_PHYS | B_CACHE))



         ubc_upl_commit_range(upl, upl_offset, abort_size, UPL_COMMIT_FREE_ON_EMPTY);
 else {
         if (io_flags & B_PAGEIO) {
          if (io_flags & B_READ)
           page_in = 1;
   else
           page_out = 1;
  }
  if (io_flags & B_CACHE)



          upl_abort_code = UPL_ABORT_FREE_ON_EMPTY;
  else if (((io_flags & B_READ) == 0) && ((error != ENXIO) || vnode_isswap(vp)))



          upl_abort_code = UPL_ABORT_FREE_ON_EMPTY;
  else if (page_in)
          upl_abort_code = UPL_ABORT_FREE_ON_EMPTY | UPL_ABORT_ERROR;
  else
          upl_abort_code = UPL_ABORT_FREE_ON_EMPTY | UPL_ABORT_DUMP_PAGES;

  ubc_upl_abort_range(upl, upl_offset, abort_size, upl_abort_code);
 }
 return (upl_abort_code);
}
