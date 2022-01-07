
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET_ADAPTER ;


 int LinkPaFree ;
 int LinkPaGetCancel ;
 int LinkPaGetNextPacket ;
 int LinkPaInit ;
 int LinkPaPutPacket ;
 int * NewPacketAdapter (int ,int ,int ,int ,int ) ;

PACKET_ADAPTER *LinkGetPacketAdapter()
{
 return NewPacketAdapter(LinkPaInit, LinkPaGetCancel, LinkPaGetNextPacket,
  LinkPaPutPacket, LinkPaFree);
}
