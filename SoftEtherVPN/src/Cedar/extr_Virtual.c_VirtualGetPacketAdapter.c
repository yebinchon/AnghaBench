
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET_ADAPTER ;


 int * NewPacketAdapter (int ,int ,int ,int ,int ) ;
 int VirtualPaFree ;
 int VirtualPaGetCancel ;
 int VirtualPaGetNextPacket ;
 int VirtualPaInit ;
 int VirtualPaPutPacket ;

PACKET_ADAPTER *VirtualGetPacketAdapter()
{
 return NewPacketAdapter(VirtualPaInit, VirtualPaGetCancel,
  VirtualPaGetNextPacket, VirtualPaPutPacket, VirtualPaFree);
}
