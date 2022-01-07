
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_3__ {int NumPacketSend; int NumPacketSendError; } ;
struct TYPE_4__ {int Event; int NdisMiniport; TYPE_1__ Status; } ;
typedef scalar_t__ PNDIS_BUFFER ;
typedef int NDIS_PACKET ;
typedef int NDIS_HANDLE ;


 scalar_t__ FALSE ;
 int NDIS_SET_PACKET_STATUS (int *,int ) ;
 int NDIS_STATUS_FAILURE ;
 int NDIS_STATUS_SUCCESS ;
 scalar_t__ NEO_MAX_PACKET_SIZE ;
 scalar_t__ NEO_MIN_PACKET_SIZE ;
 int NdisGetNextBuffer (scalar_t__,scalar_t__*) ;
 int NdisMSendComplete (int ,int *,int ) ;
 int NdisQueryBuffer (scalar_t__,int **,scalar_t__*) ;
 int NdisQueryPacket (int *,int *,int *,scalar_t__*,scalar_t__*) ;
 int NeoCheckConnectState () ;
 int NeoCopy (int *,int *,scalar_t__) ;
 int NeoFree (int *) ;
 int NeoInsertQueue (int *,scalar_t__) ;
 int NeoLockPacketQueue () ;
 int * NeoMalloc (scalar_t__) ;
 scalar_t__ NeoNdisSendPacketsHaltCheck (int **,scalar_t__) ;
 int NeoSet (int ) ;
 int NeoUnlockPacketQueue () ;
 TYPE_2__* ctx ;
 scalar_t__ g_is_win8 ;

void NeoNdisSendPackets(NDIS_HANDLE MiniportAdapterContext,
      NDIS_PACKET **PacketArray,
      UINT NumberOfPackets)
{
 UCHAR *Buf,*BufCopy;
 PNDIS_BUFFER Buffer;
 UCHAR *Tmp;
 UINT PacketLength;
 UINT CurrentLength;
 UINT i;

 if (ctx == ((void*)0))
 {
  return;
 }


 NeoCheckConnectState();

 if (NumberOfPackets == 0)
 {

  return;
 }

 if (NeoNdisSendPacketsHaltCheck(PacketArray, NumberOfPackets) == FALSE)
 {

  return;
 }


 NeoLockPacketQueue();
 {
  if (NeoNdisSendPacketsHaltCheck(PacketArray, NumberOfPackets) == FALSE)
  {

   NeoUnlockPacketQueue();
   return;
  }


  for (i = 0;i < NumberOfPackets;i++)
  {

   NdisQueryPacket(PacketArray[i], ((void*)0), ((void*)0), &Buffer, &PacketLength);



   Buf = NeoMalloc(PacketLength);
   BufCopy = Buf;
   while (Buffer)
   {
    NdisQueryBuffer(Buffer, &Tmp, &CurrentLength);
    if (CurrentLength == 0)
    {

     break;
    }
    NeoCopy(BufCopy, Tmp, CurrentLength);
    BufCopy += CurrentLength;
    NdisGetNextBuffer(Buffer, &Buffer);
   }

   if (PacketLength > NEO_MIN_PACKET_SIZE)
   {
    if (PacketLength > NEO_MAX_PACKET_SIZE)
    {

     NDIS_SET_PACKET_STATUS(PacketArray[i], NDIS_STATUS_FAILURE);

     if (g_is_win8)
     {
      NdisMSendComplete(ctx->NdisMiniport, PacketArray[i], NDIS_STATUS_FAILURE);
     }

     ctx->Status.NumPacketSendError++;
     NeoFree(Buf);
    }
    else
    {

     NeoInsertQueue(Buf, PacketLength);
     NDIS_SET_PACKET_STATUS(PacketArray[i], NDIS_STATUS_SUCCESS);

     if (g_is_win8)
     {
      NdisMSendComplete(ctx->NdisMiniport, PacketArray[i], NDIS_STATUS_SUCCESS);
     }

     ctx->Status.NumPacketSend++;
    }
   }
   else
   {

    NDIS_SET_PACKET_STATUS(PacketArray[i], NDIS_STATUS_SUCCESS);

    if (g_is_win8)
    {
     NdisMSendComplete(ctx->NdisMiniport, PacketArray[i], NDIS_STATUS_SUCCESS);
    }

    NeoFree(Buf);
   }
  }
 }
 NeoUnlockPacketQueue();


 NeoSet(ctx->Event);
}
