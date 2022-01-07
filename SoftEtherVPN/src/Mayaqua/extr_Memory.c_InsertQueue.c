
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_item; int fifo; } ;
typedef TYPE_1__ QUEUE ;


 int KS_INC (int ) ;
 int KS_INSERT_QUEUE_COUNT ;
 int WriteFifo (int ,void**,int) ;

void InsertQueue(QUEUE *q, void *p)
{

 if (q == ((void*)0) || p == ((void*)0))
 {
  return;
 }


 WriteFifo(q->fifo, &p, sizeof(void *));

 q->num_item++;
 KS_INC(KS_INSERT_QUEUE_COUNT);
}
