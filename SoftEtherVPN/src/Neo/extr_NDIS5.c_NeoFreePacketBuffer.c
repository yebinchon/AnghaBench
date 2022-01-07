
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int BufferPool; struct TYPE_4__* Buf; int NdisBuffer; int PacketPool; int NdisPacket; } ;
typedef TYPE_1__ PACKET_BUFFER ;


 int NdisFreeBuffer (int ) ;
 int NdisFreeBufferPool (int ) ;
 int NdisFreePacket (int ) ;
 int NdisFreePacketPool (int ) ;
 int NdisUnchainBufferAtFront (int ,int *) ;
 int NeoFree (TYPE_1__*) ;

void NeoFreePacketBuffer(PACKET_BUFFER *p)
{

 if (p == ((void*)0))
 {
  return;
 }


 NdisUnchainBufferAtFront(p->NdisPacket, &p->NdisBuffer);

 NdisFreePacket(p->NdisPacket);

 NdisFreePacketPool(p->PacketPool);

 NdisFreeBuffer(p->NdisBuffer);

 NeoFree(p->Buf);

 NdisFreeBufferPool(p->BufferPool);

 NeoFree(p);
}
