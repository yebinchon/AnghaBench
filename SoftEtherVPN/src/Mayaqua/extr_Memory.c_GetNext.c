
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ num_item; int fifo; } ;
typedef TYPE_1__ QUEUE ;


 int KS_GETNEXT_COUNT ;
 int KS_INC (int ) ;
 int ReadFifo (int ,void**,int) ;

void *GetNext(QUEUE *q)
{
 void *p = ((void*)0);

 if (q == ((void*)0))
 {
  return ((void*)0);
 }

 if (q->num_item == 0)
 {

  return ((void*)0);
 }


 ReadFifo(q->fifo, &p, sizeof(void *));
 q->num_item--;


 KS_INC(KS_GETNEXT_COUNT);

 return p;
}
