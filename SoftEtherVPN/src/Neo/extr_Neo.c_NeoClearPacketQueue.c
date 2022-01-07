
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int PacketQueueLock; scalar_t__ NumPacketQueue; int * Tail; TYPE_1__* PacketQueue; } ;
struct TYPE_4__ {struct TYPE_4__* Buf; struct TYPE_4__* Next; } ;
typedef TYPE_1__ NEO_QUEUE ;


 int NeoFree (TYPE_1__*) ;
 int NeoLock (int ) ;
 int NeoUnlock (int ) ;
 TYPE_2__* ctx ;

void NeoClearPacketQueue()
{

 NeoLock(ctx->PacketQueueLock);
 {
  NEO_QUEUE *q = ctx->PacketQueue;
  NEO_QUEUE *qn;
  while (q != ((void*)0))
  {
   qn = q->Next;
   NeoFree(q->Buf);
   NeoFree(q);
   q = qn;
  }
  ctx->PacketQueue = ((void*)0);
  ctx->Tail = ((void*)0);
  ctx->NumPacketQueue = 0;
 }
 NeoUnlock(ctx->PacketQueueLock);
}
