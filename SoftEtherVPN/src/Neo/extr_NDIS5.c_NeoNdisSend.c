
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int NDIS_STATUS ;
typedef int NDIS_PACKET ;
typedef int NDIS_HANDLE ;


 int NDIS_STATUS_SUCCESS ;
 int NeoNdisSendPackets (int ,int **,int) ;

NDIS_STATUS NeoNdisSend(NDIS_HANDLE MiniportAdapterContext,
      NDIS_PACKET *Packet, UINT Flags)
{
 NDIS_PACKET *PacketArray[1];
 PacketArray[0] = Packet;
 NeoNdisSendPackets(MiniportAdapterContext, PacketArray, 1);

 return NDIS_STATUS_SUCCESS;
}
