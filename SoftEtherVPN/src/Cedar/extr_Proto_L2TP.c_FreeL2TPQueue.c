
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int L2TPPacket; int Buf; } ;
typedef TYPE_1__ L2TP_QUEUE ;


 int Free (TYPE_1__*) ;
 int FreeBuf (int ) ;
 int FreeL2TPPacket (int ) ;

void FreeL2TPQueue(L2TP_QUEUE *q)
{

 if (q == ((void*)0))
 {
  return;
 }

 FreeBuf(q->Buf);

 FreeL2TPPacket(q->L2TPPacket);

 Free(q);
}
