
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
struct TYPE_18__ {scalar_t__ Checksum; int PacketLength; } ;
typedef TYPE_3__ UDP_HEADER ;
struct TYPE_22__ {int Checksum; int DstIP; int SrcIP; } ;
struct TYPE_21__ {int DestAddress; int SrcAddress; } ;
struct TYPE_20__ {int IsFragment; scalar_t__ PayloadSize; int * FragmentHeader; } ;
struct TYPE_17__ {TYPE_3__* UDPHeader; TYPE_3__* TCPHeader; } ;
struct TYPE_16__ {TYPE_7__* IPv6Header; TYPE_8__* IPv4Header; } ;
struct TYPE_19__ {scalar_t__ TypeL3; scalar_t__ TypeL4; scalar_t__ IPv4PayloadSize; TYPE_2__ L4; TYPE_6__ IPv6HeaderPacketInfo; TYPE_1__ L3; } ;
typedef TYPE_3__ TCP_HEADER ;
typedef TYPE_5__ PKT ;
typedef TYPE_6__ IPV6_HEADER_PACKET_INFO ;
typedef TYPE_7__ IPV6_HEADER ;
typedef TYPE_8__ IPV4_HEADER ;


 void* CalcChecksumForIPv4 (int ,int ,int ,TYPE_3__*,scalar_t__,scalar_t__) ;
 void* CalcChecksumForIPv6 (int *,int *,int ,TYPE_3__*,scalar_t__,scalar_t__) ;
 scalar_t__ Endian16 (int ) ;
 int IPV4_GET_FLAGS (TYPE_8__*) ;
 int IPV4_GET_HEADER_LEN (TYPE_8__*) ;
 scalar_t__ IPV4_GET_OFFSET (TYPE_8__*) ;
 int IPV6_FRAGMENT_HEADER_FLAG_MORE_FRAGMENTS ;
 int IPV6_GET_FLAGS (int *) ;
 int IP_PROTO_TCP ;
 int IP_PROTO_UDP ;
 int IpChecksum (TYPE_8__*,int) ;
 scalar_t__ L3_IPV4 ;
 scalar_t__ L3_IPV6 ;
 scalar_t__ L4_TCP ;
 scalar_t__ L4_UDP ;

void CorrectChecksum(PKT *p)
{

 if (p == ((void*)0))
 {
  return;
 }

 if (p->TypeL3 == L3_IPV4)
 {
  IPV4_HEADER *v4 = p->L3.IPv4Header;

  if (v4 != ((void*)0))
  {
   if (v4->Checksum == 0x0000)
   {
    v4->Checksum = IpChecksum(v4, IPV4_GET_HEADER_LEN(v4) * 4);
   }

   if (p->TypeL4 == L4_TCP)
   {

    if (IPV4_GET_OFFSET(v4) == 0 && (IPV4_GET_FLAGS(v4) & 0x01) == 0)
    {

     TCP_HEADER *tcp = p->L4.TCPHeader;

     if (tcp != ((void*)0))
     {
      USHORT tcp_offloading_checksum1 = CalcChecksumForIPv4(v4->SrcIP, v4->DstIP, IP_PROTO_TCP, ((void*)0), 0, p->IPv4PayloadSize);
      USHORT tcp_offloading_checksum2 = ~tcp_offloading_checksum1;

      if (tcp->Checksum == 0 || tcp->Checksum == tcp_offloading_checksum1 || tcp->Checksum == tcp_offloading_checksum2)
      {
       tcp->Checksum = 0;
       tcp->Checksum = CalcChecksumForIPv4(v4->SrcIP, v4->DstIP, IP_PROTO_TCP, tcp, p->IPv4PayloadSize, 0);
      }
     }
    }
   }

   if (p->TypeL4 == L4_UDP)
   {

    if (IPV4_GET_OFFSET(v4) == 0 || (IPV4_GET_FLAGS(v4) & 0x01) == 0)
    {

     UDP_HEADER *udp = p->L4.UDPHeader;

     if (udp != ((void*)0) && udp->Checksum != 0)
     {
      USHORT udp_len = Endian16(udp->PacketLength);
      USHORT udp_offloading_checksum1 = CalcChecksumForIPv4(v4->SrcIP, v4->DstIP, IP_PROTO_UDP, ((void*)0), 0, udp_len);
      USHORT udp_offloading_checksum2 = ~udp_offloading_checksum1;

      if (udp->Checksum == udp_offloading_checksum1 || udp->Checksum == udp_offloading_checksum2)
      {
       udp->Checksum = 0;

       if ((IPV4_GET_FLAGS(v4) & 0x01) == 0 && (p->IPv4PayloadSize >= udp_len))
       {

        udp->Checksum = CalcChecksumForIPv4(v4->SrcIP, v4->DstIP, IP_PROTO_UDP, udp, udp_len, 0);
       }
       else
       {


        udp->Checksum = 0;
       }
      }
     }
    }
   }
  }
 }
 else if (p->TypeL3 == L3_IPV6)
 {
  IPV6_HEADER *v6 = p->L3.IPv6Header;
  IPV6_HEADER_PACKET_INFO *v6info = &p->IPv6HeaderPacketInfo;

  if (v6 != ((void*)0))
  {
   if (p->TypeL4 == L4_TCP)
   {

    if (v6info->IsFragment == 0)
    {
     if (v6info->FragmentHeader == ((void*)0) || ((IPV6_GET_FLAGS(v6info->FragmentHeader) & IPV6_FRAGMENT_HEADER_FLAG_MORE_FRAGMENTS) == 0))
     {

      TCP_HEADER *tcp = p->L4.TCPHeader;

      if (tcp != ((void*)0))
      {
       USHORT tcp_offloading_checksum1 = CalcChecksumForIPv6(&v6->SrcAddress, &v6->DestAddress, IP_PROTO_TCP, ((void*)0), 0, v6info->PayloadSize);
       USHORT tcp_offloading_checksum2 = ~tcp_offloading_checksum1;

       if (tcp->Checksum == 0 || tcp->Checksum == tcp_offloading_checksum1 || tcp->Checksum == tcp_offloading_checksum2)
       {
        tcp->Checksum = 0;
        tcp->Checksum = CalcChecksumForIPv6(&v6->SrcAddress, &v6->DestAddress, IP_PROTO_TCP, tcp, v6info->PayloadSize, 0);
       }
      }
     }
    }
   }
   else if (p->TypeL4 == L4_UDP)
   {

    if (v6info->IsFragment == 0)
    {
     UDP_HEADER *udp = p->L4.UDPHeader;

     if (udp != ((void*)0) && udp->Checksum != 0)
     {
      USHORT udp_len = Endian16(udp->PacketLength);
      USHORT udp_offloading_checksum1 = CalcChecksumForIPv6(&v6->SrcAddress, &v6->DestAddress, IP_PROTO_UDP, ((void*)0), 0, udp_len);
      USHORT udp_offloading_checksum2 = ~udp_offloading_checksum1;

      if (udp->Checksum == 0 || udp->Checksum == udp_offloading_checksum1 || udp->Checksum == udp_offloading_checksum2)
      {
       udp->Checksum = 0;

       if ((v6info->FragmentHeader == ((void*)0) || ((IPV6_GET_FLAGS(v6info->FragmentHeader) & IPV6_FRAGMENT_HEADER_FLAG_MORE_FRAGMENTS) == 0)) && (v6info->PayloadSize >= udp_len))
       {

        udp->Checksum = CalcChecksumForIPv6(&v6->SrcAddress, &v6->DestAddress, IP_PROTO_UDP, udp, udp_len, 0);
       }
       else
       {

       }
      }
     }
    }
   }
  }
 }
}
