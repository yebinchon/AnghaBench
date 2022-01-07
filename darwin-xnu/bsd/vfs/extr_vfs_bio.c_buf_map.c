
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ kern_return_t ;
typedef int errno_t ;
typedef int * caddr_t ;
typedef TYPE_1__* buf_t ;
struct TYPE_3__ {int b_flags; scalar_t__ b_uploffset; int b_upl; scalar_t__ b_datap; scalar_t__ b_real_bp; } ;


 int B_CLUSTER ;
 int ENOMEM ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ ubc_upl_map (int ,scalar_t__*) ;

errno_t
buf_map(buf_t bp, caddr_t *io_addr)
{
        buf_t real_bp;
        vm_offset_t vaddr;
        kern_return_t kret;

        if ( !(bp->b_flags & B_CLUSTER)) {
         *io_addr = (caddr_t)bp->b_datap;
  return (0);
 }
 real_bp = (buf_t)(bp->b_real_bp);

 if (real_bp && real_bp->b_datap) {







         *io_addr = (caddr_t)real_bp->b_datap;
  return (0);
 }
 kret = ubc_upl_map(bp->b_upl, &vaddr);

 if (kret != KERN_SUCCESS) {
         *io_addr = ((void*)0);

         return(ENOMEM);
 }
 vaddr += bp->b_uploffset;

 *io_addr = (caddr_t)vaddr;

 return (0);
}
