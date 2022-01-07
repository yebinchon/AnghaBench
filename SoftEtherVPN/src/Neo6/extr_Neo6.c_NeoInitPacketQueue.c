
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * Tail; scalar_t__ NumPacketQueue; int * PacketQueue; int PacketQueueLock; } ;


 int NeoNewLock () ;
 TYPE_1__* ctx ;

void NeoInitPacketQueue()
{

 ctx->PacketQueueLock = NeoNewLock();

 ctx->PacketQueue = ((void*)0);
 ctx->NumPacketQueue = 0;
 ctx->Tail = ((void*)0);
}
