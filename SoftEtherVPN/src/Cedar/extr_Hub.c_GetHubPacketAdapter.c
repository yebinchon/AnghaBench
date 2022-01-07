
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET_ADAPTER ;


 int HubPaFree ;
 int HubPaGetCancel ;
 int HubPaGetNextPacket ;
 int HubPaInit ;
 int HubPaPutPacket ;
 int * NewPacketAdapter (int ,int ,int ,int ,int ) ;

PACKET_ADAPTER *GetHubPacketAdapter()
{

 PACKET_ADAPTER *pa = NewPacketAdapter(HubPaInit,
  HubPaGetCancel, HubPaGetNextPacket, HubPaPutPacket, HubPaFree);

 return pa;
}
