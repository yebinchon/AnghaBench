
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PACKET_ADAPTER ;


 int * NewPacketAdapter (int ,int ,int ,int ,int ) ;
 int NullPaFree ;
 int NullPaGetCancel ;
 int NullPaGetNextPacket ;
 int NullPaInit ;
 int NullPaPutPacket ;

PACKET_ADAPTER *NullGetPacketAdapter()
{
 PACKET_ADAPTER *pa = NewPacketAdapter(NullPaInit, NullPaGetCancel, NullPaGetNextPacket,
  NullPaPutPacket, NullPaFree);

 return pa;
}
