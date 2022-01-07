
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int buf ;
typedef scalar_t__ USHORT ;
typedef int UINT ;
struct TYPE_10__ {int Size; scalar_t__* Data; int Type; } ;
typedef TYPE_1__ UDPPACKET ;
typedef int UCHAR ;
struct TYPE_12__ {int SendPacketList; int RecvPacketList; } ;
struct TYPE_11__ {int DstPort; int DstIP; int SrcPort; int SrcIP; int * Data; } ;
typedef TYPE_2__ TCP_RAW_DATA ;
typedef TYPE_3__ OPENVPN_SERVER ;
typedef int FIFO ;


 int Add (int ,TYPE_1__*) ;
 int Clone (int *,scalar_t__) ;
 int Debug (char*,...) ;
 int DeleteAll (int ) ;
 scalar_t__ Endian16 (scalar_t__) ;
 int FifoPtr (int *) ;
 int FifoSize (int *) ;
 int FreeUdpPacket (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int ,int) ;
 int LIST_NUM (int ) ;
 TYPE_1__* NewUdpPacket (int *,int ,int *,int ,int ,scalar_t__) ;
 int OPENVPN_PROTOCOL_TCP ;
 int OPENVPN_TCP_MAX_PACKET_SIZE ;
 int OvsRecvPacket (TYPE_3__*,int ) ;
 scalar_t__ READ_USHORT (int ) ;
 scalar_t__ ReadFifo (int *,int *,scalar_t__) ;
 int WriteFifo (int *,scalar_t__*,int) ;

bool OvsProcessData(void *param, TCP_RAW_DATA *received_data, FIFO *data_to_send)
{
 bool ret = 1;
 UINT i;
 OPENVPN_SERVER *server;
 UCHAR buf[OPENVPN_TCP_MAX_PACKET_SIZE];

 if (param == ((void*)0) || received_data == ((void*)0) || data_to_send == ((void*)0))
 {
  return 0;
 }

 server = param;


 while (1)
 {
  UDPPACKET *packet;
  USHORT payload_size, packet_size;
  FIFO *fifo = received_data->Data;
  const UINT fifo_size = FifoSize(fifo);

  if (fifo_size < sizeof(USHORT))
  {

   break;
  }


  payload_size = READ_USHORT(FifoPtr(fifo));
  packet_size = payload_size + sizeof(USHORT);

  if (payload_size == 0 || packet_size > sizeof(buf))
  {
   ret = 0;
   Debug("OvsProcessData(): Invalid payload size: %u bytes\n", payload_size);
   break;
  }

  if (fifo_size < packet_size)
  {

   break;
  }

  if (ReadFifo(fifo, buf, packet_size) != packet_size)
  {
   ret = 0;
   Debug("OvsProcessData(): ReadFifo() failed to read the packet\n");
   break;
  }


  packet = NewUdpPacket(&received_data->SrcIP, received_data->SrcPort, &received_data->DstIP, received_data->DstPort, Clone(buf + sizeof(USHORT), payload_size), payload_size);
  packet->Type = OPENVPN_PROTOCOL_TCP;
  Add(server->RecvPacketList, packet);
 }


 OvsRecvPacket(server, server->RecvPacketList);


 for (i = 0; i < LIST_NUM(server->RecvPacketList); ++i)
 {
  UDPPACKET *p = LIST_DATA(server->RecvPacketList, i);
  FreeUdpPacket(p);
 }

 DeleteAll(server->RecvPacketList);


 for (i = 0; i < LIST_NUM(server->SendPacketList); ++i)
 {
  UDPPACKET *p = LIST_DATA(server->SendPacketList, i);


  USHORT us = Endian16((USHORT)p->Size);

  WriteFifo(data_to_send, &us, sizeof(USHORT));


  WriteFifo(data_to_send, p->Data, p->Size);


  FreeUdpPacket(p);
 }

 DeleteAll(server->SendPacketList);

 return ret;
}
