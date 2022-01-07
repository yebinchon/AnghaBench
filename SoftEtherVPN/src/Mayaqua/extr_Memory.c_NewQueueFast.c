
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fifo; scalar_t__ num_item; int * ref; int * lock; } ;
typedef TYPE_1__ QUEUE ;


 int KS_INC (int ) ;
 int KS_NEWQUEUE_COUNT ;
 int NewFifoFast () ;
 TYPE_1__* ZeroMalloc (int) ;

QUEUE *NewQueueFast()
{
 QUEUE *q;

 q = ZeroMalloc(sizeof(QUEUE));
 q->lock = ((void*)0);
 q->ref = ((void*)0);
 q->num_item = 0;
 q->fifo = NewFifoFast();


 KS_INC(KS_NEWQUEUE_COUNT);

 return q;
}
