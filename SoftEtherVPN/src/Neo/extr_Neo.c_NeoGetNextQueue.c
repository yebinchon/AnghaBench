
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * Tail; TYPE_1__* PacketQueue; int NumPacketQueue; } ;
struct TYPE_4__ {struct TYPE_4__* Next; } ;
typedef TYPE_1__ NEO_QUEUE ;


 TYPE_2__* ctx ;

NEO_QUEUE *NeoGetNextQueue()
{
 NEO_QUEUE *q;
 if (ctx->PacketQueue == ((void*)0))
 {

  return ((void*)0);
 }


 q = ctx->PacketQueue;
 ctx->PacketQueue = ctx->PacketQueue->Next;
 q->Next = ((void*)0);
 ctx->NumPacketQueue--;

 if (ctx->PacketQueue == ((void*)0))
 {
  ctx->Tail = ((void*)0);
 }

 return q;
}
