
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* buf_t ;
struct TYPE_6__ {void (* b_iodone ) (TYPE_1__*,void*) ;int b_flags; void* b_transaction; int b_lflags; } ;


 int BL_BUSY ;
 int B_FILTER ;
 int ISSET (int ,int ) ;
 int assert (int ) ;

void
buf_setfilter(buf_t bp, void (*filter)(buf_t, void *), void *transaction,
     void (**old_iodone)(buf_t, void *), void **old_transaction)
{
 assert(ISSET(bp->b_lflags, BL_BUSY));

 if (old_iodone)
  *old_iodone = bp->b_iodone;
 if (old_transaction)
  *old_transaction = bp->b_transaction;

 bp->b_transaction = transaction;
 bp->b_iodone = filter;
 if (filter)
         bp->b_flags |= B_FILTER;
 else
         bp->b_flags &= ~B_FILTER;
}
