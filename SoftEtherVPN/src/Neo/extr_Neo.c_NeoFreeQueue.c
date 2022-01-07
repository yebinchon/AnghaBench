
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Buf; } ;
typedef TYPE_1__ NEO_QUEUE ;


 int NeoFree (TYPE_1__*) ;

void NeoFreeQueue(NEO_QUEUE *q)
{

 if (q == ((void*)0))
 {
  return;
 }
 NeoFree(q->Buf);
 NeoFree(q);
}
