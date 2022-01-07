
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; int fifo; } ;
typedef TYPE_1__ QUEUE ;


 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int KS_FREEQUEUE_COUNT ;
 int KS_INC (int ) ;
 int ReleaseFifo (int ) ;

void CleanupQueue(QUEUE *q)
{

 if (q == ((void*)0))
 {
  return;
 }


 ReleaseFifo(q->fifo);
 DeleteLock(q->lock);
 Free(q);


 KS_INC(KS_FREEQUEUE_COUNT);
}
