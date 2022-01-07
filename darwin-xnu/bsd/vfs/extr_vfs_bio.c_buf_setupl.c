
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ upl_t ;
typedef int uint32_t ;
typedef int errno_t ;
typedef TYPE_1__* buf_t ;
struct TYPE_3__ {int b_lflags; int b_uploffset; scalar_t__ b_upl; int b_flags; } ;


 int BL_IOBUF ;
 int B_CLUSTER ;
 int EINVAL ;

errno_t
buf_setupl(buf_t bp, upl_t upl, uint32_t offset)
{

        if ( !(bp->b_lflags & BL_IOBUF) )
         return (EINVAL);

 if (upl)
         bp->b_flags |= B_CLUSTER;
 else
         bp->b_flags &= ~B_CLUSTER;
 bp->b_upl = upl;
 bp->b_uploffset = offset;

 return (0);
}
