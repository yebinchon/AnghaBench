
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_2__ {int * PacketBuffer; } ;


 size_t NEO_MAX_PACKET_EXCHANGE ;
 int NeoNewPacketBuffer () ;
 TYPE_1__* ctx ;

void NeoInitPacketArray()
{
 UINT i;

 for (i = 0;i < NEO_MAX_PACKET_EXCHANGE;i++)
 {
  ctx->PacketBuffer[i] = NeoNewPacketBuffer();
 }
}
