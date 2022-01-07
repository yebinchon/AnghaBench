
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_7__ {int DstPort; int SrcPort; int PacketLength; } ;
typedef TYPE_1__ UDP_HEADER ;
struct TYPE_8__ {int DestPort; int Size; int SrcPort; int * Data; int SrcIP; int DstIP; scalar_t__ Type; } ;
typedef TYPE_2__ UDPPACKET ;
typedef int UCHAR ;
struct TYPE_9__ {int L2TPClientPort; int L2TP; int L2TPClientIP; int L2TPServerIP; } ;
typedef int IP ;
typedef int IKE_SERVER ;
typedef TYPE_3__ IKE_CLIENT ;


 int Copy (int *,int *,int) ;
 int Endian16 (int ) ;
 int IPSEC_PORT_L2TP ;
 int IPsecIkeClientManageL2TPServer (int *,TYPE_3__*) ;
 int IPsecIkeSendUdpForDebug (int,int,int *,int) ;
 int ProcL2TPPacketRecv (int ,TYPE_2__*) ;

void ProcIPsecUdpPacketRecv(IKE_SERVER *ike, IKE_CLIENT *c, UCHAR *data, UINT data_size)
{
 UDP_HEADER *u;
 UINT payload_size;
 UINT src_port, dst_port;
 UINT packet_length;

 if (ike == ((void*)0) || c == ((void*)0) || data == ((void*)0) || data_size == 0)
 {
  return;
 }

 if (data_size <= sizeof(UDP_HEADER))
 {

  return;
 }


 u = (UDP_HEADER *)data;

 packet_length = Endian16(u->PacketLength);

 if (packet_length <= sizeof(UDP_HEADER))
 {
  return;
 }

 payload_size = packet_length - sizeof(UDP_HEADER);

 if (payload_size == 0)
 {

  return;
 }

 if (data_size < (sizeof(UDP_HEADER) + payload_size))
 {

  return;
 }

 src_port = Endian16(u->SrcPort);
 dst_port = Endian16(u->DstPort);

 if (dst_port == IPSEC_PORT_L2TP)
 {
  UDPPACKET p;

  IPsecIkeClientManageL2TPServer(ike, c);


  c->L2TPClientPort = src_port;


  p.Type = 0;
  p.Data = data + sizeof(UDP_HEADER);
  p.DestPort = IPSEC_PORT_L2TP;
  Copy(&p.DstIP, &c->L2TPServerIP, sizeof(IP));
  p.Size = payload_size;
  Copy(&p.SrcIP, &c->L2TPClientIP, sizeof(IP));
  p.SrcPort = IPSEC_PORT_L2TP;

  ProcL2TPPacketRecv(c->L2TP, &p);






 }
}
