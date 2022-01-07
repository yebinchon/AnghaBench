
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vnode_t ;
typedef int vm_offset_t ;
typedef int upl_t ;
typedef int upl_page_info_t ;
typedef scalar_t__ kern_return_t ;
typedef TYPE_1__* buf_t ;
struct TYPE_5__ {int b_bufsize; int b_flags; int b_datap; int b_upl; int b_lblkno; int b_vp; } ;


 int B_INVAL ;
 int B_READ ;
 scalar_t__ KERN_SUCCESS ;
 int PAGE_SIZE ;
 int SET (int ,int ) ;
 int UBCINFOEXISTS (int ) ;
 int UPL_PRECIOUS ;
 int UPL_WILL_MODIFY ;
 int VM_KERN_MEMORY_FILE ;
 int buf_brelse (TYPE_1__*) ;
 int buf_flags (TYPE_1__*) ;
 int panic (char*,...) ;
 int ubc_blktooff (int ,int ) ;
 scalar_t__ ubc_create_upl_kernel (int ,int ,int,int *,int **,int,int ) ;
 int ubc_upl_abort (int ,int ) ;
 scalar_t__ ubc_upl_map (int ,int *) ;
 int upl_dirty_page (int *,int) ;
 int upl_valid_page (int *,int) ;

__attribute__((used)) static int
brecover_data(buf_t bp)
{
 int upl_offset;
        upl_t upl;
 upl_page_info_t *pl;
 kern_return_t kret;
 vnode_t vp = bp->b_vp;
 int upl_flags;


 if ( !UBCINFOEXISTS(vp) || bp->b_bufsize == 0)
         goto dump_buffer;

 upl_flags = UPL_PRECIOUS;
 if (! (buf_flags(bp) & B_READ)) {





  upl_flags |= UPL_WILL_MODIFY;
 }

 kret = ubc_create_upl_kernel(vp,
         ubc_blktooff(vp, bp->b_lblkno),
         bp->b_bufsize,
         &upl,
         &pl,
         upl_flags,
         VM_KERN_MEMORY_FILE);
 if (kret != KERN_SUCCESS)
         panic("Failed to create UPL");

 for (upl_offset = 0; upl_offset < bp->b_bufsize; upl_offset += PAGE_SIZE) {

         if (!upl_valid_page(pl, upl_offset / PAGE_SIZE) || !upl_dirty_page(pl, upl_offset / PAGE_SIZE)) {
          ubc_upl_abort(upl, 0);
   goto dump_buffer;
  }
 }
 bp->b_upl = upl;

 kret = ubc_upl_map(upl, (vm_offset_t *)&(bp->b_datap));

 if (kret != KERN_SUCCESS)
         panic("getblk: ubc_upl_map() failed with (%d)", kret);
 return (1);

dump_buffer:
 bp->b_bufsize = 0;
 SET(bp->b_flags, B_INVAL);
 buf_brelse(bp);

 return(0);
}
