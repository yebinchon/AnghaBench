
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {int NumPacketSendError; } ;
struct TYPE_4__ {scalar_t__ Halting; scalar_t__ Opened; TYPE_1__ Status; int NdisMiniport; } ;
typedef int NDIS_PACKET ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 int NDIS_SET_PACKET_STATUS (int *,int ) ;
 int NDIS_STATUS_FAILURE ;
 int NDIS_STATUS_SUCCESS ;
 int NdisMSendComplete (int ,int *,int ) ;
 scalar_t__ TRUE ;
 TYPE_2__* ctx ;
 scalar_t__ g_is_win8 ;

BOOL NeoNdisSendPacketsHaltCheck(NDIS_PACKET **PacketArray, UINT NumberOfPackets)
{
 UINT i;

 if (ctx == ((void*)0))
 {
  return FALSE;
 }

 if (ctx->Halting != FALSE || ctx->Opened == FALSE)
 {

  for (i = 0;i < NumberOfPackets;i++)
  {
   NDIS_SET_PACKET_STATUS(PacketArray[i], NDIS_STATUS_FAILURE);

   if (g_is_win8)
   {
    NdisMSendComplete(ctx->NdisMiniport, PacketArray[i], NDIS_STATUS_SUCCESS);
   }

   ctx->Status.NumPacketSendError++;
  }
  return FALSE;
 }
 return TRUE;
}
