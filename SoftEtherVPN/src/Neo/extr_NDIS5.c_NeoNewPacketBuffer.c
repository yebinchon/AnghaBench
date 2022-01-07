
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int NdisBuffer; int NdisPacket; int PacketPool; int Buf; int BufferPool; } ;
typedef TYPE_1__ PACKET_BUFFER ;
typedef int NDIS_STATUS ;


 int NDIS_SET_PACKET_HEADER_SIZE (int ,int ) ;
 int NEO_MAX_PACKET_SIZE ;
 int NEO_PACKET_HEADER_SIZE ;
 int NdisAllocateBuffer (int *,int *,int ,int ,int ) ;
 int NdisAllocateBufferPool (int *,int *,int) ;
 int NdisAllocatePacket (int *,int *,int ) ;
 int NdisAllocatePacketPool (int *,int *,int,int ) ;
 int NdisChainBufferAtFront (int ,int ) ;
 int NeoMalloc (int ) ;
 TYPE_1__* NeoZeroMalloc (int) ;
 int PROTOCOL_RESERVED_SIZE_IN_PACKET ;

PACKET_BUFFER *NeoNewPacketBuffer()
{
 PACKET_BUFFER *p;
 NDIS_STATUS ret;


 p = NeoZeroMalloc(sizeof(PACKET_BUFFER));

 p->Buf = NeoMalloc(NEO_MAX_PACKET_SIZE);

 NdisAllocateBufferPool(&ret, &p->BufferPool, 1);

 NdisAllocateBuffer(&ret, &p->NdisBuffer, p->BufferPool, p->Buf, NEO_MAX_PACKET_SIZE);

 NdisAllocatePacketPool(&ret, &p->PacketPool, 1, PROTOCOL_RESERVED_SIZE_IN_PACKET);

 NdisAllocatePacket(&ret, &p->NdisPacket, p->PacketPool);
 NDIS_SET_PACKET_HEADER_SIZE(p->NdisPacket, NEO_PACKET_HEADER_SIZE);

 NdisChainBufferAtFront(p->NdisPacket, p->NdisBuffer);

 return p;
}
