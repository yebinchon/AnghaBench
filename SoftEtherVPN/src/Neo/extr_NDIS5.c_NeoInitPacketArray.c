
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {int NdisPacket; } ;
struct TYPE_3__ {TYPE_2__** PacketBuffer; int * PacketBufferArray; } ;


 size_t NEO_MAX_PACKET_EXCHANGE ;
 TYPE_2__* NeoNewPacketBuffer () ;
 TYPE_1__* ctx ;

void NeoInitPacketArray()
{
 UINT i;

 for (i = 0;i < NEO_MAX_PACKET_EXCHANGE;i++)
 {
  ctx->PacketBuffer[i] = NeoNewPacketBuffer();

  ctx->PacketBufferArray[i] = ctx->PacketBuffer[i]->NdisPacket;
 }
}
