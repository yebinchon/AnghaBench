
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int tmp1600 ;
typedef int UINT ;
struct TYPE_14__ {void* Checksum; void* PacketLength; void* DstPort; void* SrcPort; } ;
typedef TYPE_5__ UDP_HEADER ;
typedef int UCHAR ;
struct TYPE_13__ {scalar_t__ ipv6_addr; } ;
struct TYPE_12__ {scalar_t__ ipv6_addr; } ;
struct TYPE_11__ {scalar_t__ ipv6_addr; } ;
struct TYPE_10__ {scalar_t__ ipv6_addr; } ;
struct TYPE_15__ {TYPE_4__ TunnelModeClientIP; TYPE_3__ TunnelModeServerIP; TYPE_2__ TransportModeClientIP; TYPE_1__ TransportModeServerIP; int CurrentIpSecSaSend; int ClientIP; } ;
typedef int IPV6_ADDR ;
typedef int IKE_SERVER ;
typedef TYPE_6__ IKE_CLIENT ;


 void* CalcChecksumForIPv6 (int *,int *,int ,TYPE_5__*,int,int ) ;
 int Copy (int *,int *,int) ;
 void* Endian16 (int) ;
 int Free (int *) ;
 int IPSEC_PORT_L2TP ;
 int IP_PROTO_UDP ;
 int IPsecIkeSendUdpForDebug (int ,int,int *,int) ;
 int IPsecSendPacketByIkeClient (int *,TYPE_6__*,int *,int,int ) ;
 scalar_t__ IsIP6 (int *) ;
 int IsIPsecSaTunnelMode (int ) ;
 int * Malloc (int) ;

void IPsecSendUdpPacket(IKE_SERVER *ike, IKE_CLIENT *c, UINT src_port, UINT dst_port, UCHAR *data, UINT data_size)
{
 UCHAR *udp;
 UINT udp_size;
 UDP_HEADER *u;
 UCHAR tmp1600[1600];
 bool no_free = 0;

 if (ike == ((void*)0) || c == ((void*)0) || data == ((void*)0) || data_size == 0)
 {
  return;
 }


 udp_size = sizeof(UDP_HEADER) + data_size;

 if (udp_size > sizeof(tmp1600))
 {
  udp = Malloc(udp_size);
 }
 else
 {
  udp = tmp1600;
  no_free = 1;
 }


 u = (UDP_HEADER *)udp;
 u->SrcPort = Endian16(src_port);
 u->DstPort = Endian16(dst_port);
 u->PacketLength = Endian16(udp_size);
 u->Checksum = 0;







 Copy(udp + sizeof(UDP_HEADER), data, data_size);

 if (IsIP6(&c->ClientIP))
 {
  if (IsIPsecSaTunnelMode(c->CurrentIpSecSaSend) == 0)
  {
   u->Checksum = CalcChecksumForIPv6((IPV6_ADDR *)c->TransportModeServerIP.ipv6_addr,
    (IPV6_ADDR *)c->TransportModeClientIP.ipv6_addr,
    IP_PROTO_UDP,
    u,
    udp_size, 0);
  }
  else
  {
   u->Checksum = CalcChecksumForIPv6((IPV6_ADDR *)c->TunnelModeServerIP.ipv6_addr,
    (IPV6_ADDR *)c->TunnelModeClientIP.ipv6_addr,
    IP_PROTO_UDP,
    u,
    udp_size, 0);
  }
 }

 IPsecSendPacketByIkeClient(ike, c, udp, udp_size, IP_PROTO_UDP);

 if (no_free == 0)
 {
  Free(udp);
 }
}
