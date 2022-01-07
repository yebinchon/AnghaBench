
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ kern_return_t ;
typedef int errno_t ;
typedef TYPE_1__* buf_t ;
struct TYPE_3__ {int b_flags; int b_lflags; int b_upl; scalar_t__ b_datap; scalar_t__ b_real_bp; } ;


 int BL_IOBUF ;
 int B_AGE ;
 int B_CLUSTER ;
 int B_PAGEIO ;
 int B_READ ;
 int EINVAL ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ ubc_upl_unmap (int ) ;

errno_t
buf_unmap(buf_t bp)
{
        buf_t real_bp;
        kern_return_t kret;

        if ( !(bp->b_flags & B_CLUSTER))
         return (0);



 real_bp = (buf_t)(bp->b_real_bp);

 if (real_bp && real_bp->b_datap)
         return (0);

 if ((bp->b_lflags & BL_IOBUF) &&
     ((bp->b_flags & (B_PAGEIO | B_READ)) != (B_PAGEIO | B_READ))) {
         bp->b_flags |= B_AGE;
 }
 kret = ubc_upl_unmap(bp->b_upl);

 if (kret != KERN_SUCCESS)
         return (EINVAL);
 return (0);
}
