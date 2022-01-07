
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ NumPacketQueue; TYPE_1__* Tail; TYPE_1__* PacketQueue; } ;
struct TYPE_4__ {struct TYPE_4__* Next; void* Buf; scalar_t__ Size; } ;
typedef TYPE_1__ NEO_QUEUE ;


 scalar_t__ NEO_MAX_PACKET_QUEUED ;
 int NeoFree (void*) ;
 TYPE_1__* NeoMalloc (int) ;
 TYPE_2__* ctx ;

void NeoInsertQueue(void *buf, UINT size)
{
 NEO_QUEUE *p;

 if (buf == ((void*)0) || size == 0)
 {
  return;
 }


 if (ctx->NumPacketQueue > NEO_MAX_PACKET_QUEUED)
 {
  NeoFree(buf);
  return;
 }


 p = NeoMalloc(sizeof(NEO_QUEUE));
 p->Next = ((void*)0);
 p->Size = size;
 p->Buf = buf;


 if (ctx->PacketQueue == ((void*)0))
 {
  ctx->PacketQueue = p;
 }
 else
 {
  NEO_QUEUE *q = ctx->Tail;
  q->Next = p;
 }

 ctx->Tail = p;

 ctx->NumPacketQueue++;
}
