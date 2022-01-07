
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_5__ {int NumPacketRecv; } ;
struct TYPE_7__ {scalar_t__ Halting; scalar_t__ Opened; int PacketBufferArray; int NdisMiniport; TYPE_1__ Status; TYPE_2__** PacketBuffer; } ;
struct TYPE_6__ {scalar_t__ Buf; int NdisPacket; int NdisBuffer; } ;
typedef TYPE_2__ PACKET_BUFFER ;


 scalar_t__ FALSE ;
 int NDIS_SET_PACKET_HEADER_SIZE (int ,scalar_t__) ;
 int NDIS_SET_PACKET_STATUS (int ,int ) ;
 int NDIS_STATUS_RESOURCES ;
 void* NEO_ADDR_OF_PACKET (void*,scalar_t__) ;
 scalar_t__ NEO_MAX_PACKET_EXCHANGE ;
 scalar_t__ NEO_MAX_PACKET_SIZE ;
 scalar_t__ NEO_NUM_PACKET (void*) ;
 scalar_t__ NEO_PACKET_HEADER_SIZE ;
 scalar_t__ NEO_SIZE_OF_PACKET (void*,scalar_t__) ;
 int NdisAdjustBufferLength (int ,scalar_t__) ;
 int NdisMEthIndicateReceive (int ,TYPE_3__*,scalar_t__,scalar_t__,int *,scalar_t__,scalar_t__) ;
 int NdisMEthIndicateReceiveComplete (int ) ;
 int NdisMIndicateReceivePacket (int ,int ,scalar_t__) ;
 int NeoCopy (scalar_t__,void*,scalar_t__) ;
 TYPE_3__* ctx ;
 int g_is_win8 ;

void NeoWrite(void *buf)
{
 UINT num, i, size;
 void *packet_buf;

 if (buf == ((void*)0))
 {
  return;
 }


 num = NEO_NUM_PACKET(buf);
 if (num > NEO_MAX_PACKET_EXCHANGE)
 {

  return;
 }
 if (num == 0)
 {

  return;
 }

 if (ctx->Halting != FALSE)
 {

  return;
 }

 if (ctx->Opened == FALSE)
 {

  return;
 }

 for (i = 0;i < num;i++)
 {
  PACKET_BUFFER *p = ctx->PacketBuffer[i];

  size = NEO_SIZE_OF_PACKET(buf, i);
  if (size > NEO_MAX_PACKET_SIZE)
  {
   size = NEO_MAX_PACKET_SIZE;
  }
  if (size < NEO_PACKET_HEADER_SIZE)
  {
   size = NEO_PACKET_HEADER_SIZE;
  }

  packet_buf = NEO_ADDR_OF_PACKET(buf, i);


  NeoCopy(p->Buf, packet_buf, size);

  if (g_is_win8 == 0)
  {

   NdisAdjustBufferLength(p->NdisBuffer, size);

   NDIS_SET_PACKET_STATUS(p->NdisPacket, NDIS_STATUS_RESOURCES);
   NDIS_SET_PACKET_HEADER_SIZE(p->NdisPacket, NEO_PACKET_HEADER_SIZE);
  }
  else
  {
   NdisMEthIndicateReceive(ctx->NdisMiniport, ctx,
    p->Buf, NEO_PACKET_HEADER_SIZE,
    ((UCHAR *)p->Buf) + NEO_PACKET_HEADER_SIZE, size - NEO_PACKET_HEADER_SIZE,
    size - NEO_PACKET_HEADER_SIZE);
   NdisMEthIndicateReceiveComplete(ctx->NdisMiniport);
  }
 }


 ctx->Status.NumPacketRecv += num;

 if (g_is_win8 == 0)
 {
  NdisMIndicateReceivePacket(ctx->NdisMiniport, ctx->PacketBufferArray, num);
 }
}
