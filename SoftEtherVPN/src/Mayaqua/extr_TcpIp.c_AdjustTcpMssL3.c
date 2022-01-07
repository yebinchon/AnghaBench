
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int USHORT ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_15__ {scalar_t__ Protocol; int TotalLength; int DstIP; int SrcIP; } ;
struct TYPE_14__ {int DestAddress; int SrcAddress; } ;
struct TYPE_13__ {scalar_t__ Protocol; int PayloadSize; scalar_t__ Payload; int * FragmentHeader; scalar_t__ IsFragment; TYPE_3__* IPv6Header; } ;
struct TYPE_12__ {int Flag; scalar_t__ Checksum; } ;
typedef TYPE_1__ TCP_HEADER ;
typedef TYPE_2__ IPV6_HEADER_PACKET_INFO ;
typedef TYPE_3__ IPV6_HEADER ;
typedef TYPE_4__ IPV4_HEADER ;


 scalar_t__ CalcChecksumForIPv4 (int ,int ,scalar_t__,TYPE_1__*,int,int ) ;
 scalar_t__ CalcChecksumForIPv6 (int *,int *,scalar_t__,TYPE_1__*,int,int ) ;
 int IPV4_GET_FLAGS (TYPE_4__*) ;
 int IPV4_GET_HEADER_LEN (TYPE_4__*) ;
 scalar_t__ IPV4_GET_OFFSET (TYPE_4__*) ;
 int IPV6_FRAGMENT_HEADER_FLAG_MORE_FRAGMENTS ;
 int IPV6_GET_FLAGS (int *) ;
 scalar_t__ IP_PROTO_TCP ;
 int MAX (int,int) ;
 int ParsePacketIPv6Header (TYPE_2__*,int*,int) ;
 int READ_USHORT (int*) ;
 int TCP_GET_HEADER_SIZE (TYPE_1__*) ;
 int TCP_PSH ;
 int TCP_RST ;
 int TCP_SYN ;
 int TCP_URG ;
 int WRITE_USHORT (int*,int) ;

bool AdjustTcpMssL3(UCHAR *src, UINT src_size, UINT mss)
{
 UCHAR ip_ver;
 TCP_HEADER *tcp = ((void*)0);
 UINT tcp_size = 0;
 UINT tcp_header_size;
 UCHAR *options;
 UINT options_size;
 IPV4_HEADER *ip = ((void*)0);
 IPV6_HEADER *ip6 = ((void*)0);

 if (src == ((void*)0) || src_size == 0 || mss == 0)
 {
  return 0;
 }


 ip_ver = (src[0] >> 4) & 0x0f;

 if (ip_ver == 4)
 {
  UINT ip_header_size;
  UINT ip_total_length;

  if (src_size < sizeof(IPV4_HEADER))
  {

   return 0;
  }

  ip = (IPV4_HEADER *)src;

  if (ip->Protocol != IP_PROTO_TCP)
  {

   return 0;
  }

  if (IPV4_GET_OFFSET(ip) != 0)
  {

   return 0;
  }

  if (IPV4_GET_FLAGS(ip) & 0x01)
  {

   return 0;
  }

  ip_header_size = IPV4_GET_HEADER_LEN(ip) * 4;
  if (ip_header_size < sizeof(IPV4_HEADER))
  {

   return 0;
  }

  if (src_size < ip_header_size)
  {

   return 0;
  }

  ip_total_length = READ_USHORT(&ip->TotalLength);

  if (ip_total_length < ip_header_size)
  {

   return 0;
  }

  if (src_size < ip_total_length)
  {

   return 0;
  }

  src += ip_header_size;
  src_size = ip_total_length - ip_header_size;

  if (src_size < sizeof(TCP_HEADER))
  {

   return 0;
  }

  tcp = (TCP_HEADER *)src;
  tcp_size = src_size;
 }
 else if (ip_ver == 6)
 {

  IPV6_HEADER_PACKET_INFO v6;

  if (ParsePacketIPv6Header(&v6, src, src_size) == 0)
  {

   return 0;
  }

  ip6 = v6.IPv6Header;
  if (ip6 == ((void*)0))
  {
   return 0;
  }

  if (v6.Protocol != IP_PROTO_TCP)
  {

   return 0;
  }

  if (v6.IsFragment)
  {

   return 0;
  }

  if (v6.FragmentHeader != ((void*)0))
  {
   if (IPV6_GET_FLAGS(v6.FragmentHeader) & IPV6_FRAGMENT_HEADER_FLAG_MORE_FRAGMENTS)
   {

    return 0;
   }
  }

  tcp = (TCP_HEADER *)v6.Payload;
  tcp_size = v6.PayloadSize;
 }
 else
 {

  return 0;
 }


 if (tcp == ((void*)0) || tcp_size < sizeof(TCP_HEADER))
 {
  return 0;
 }

 tcp_header_size = TCP_GET_HEADER_SIZE(tcp) * 4;
 if (tcp_header_size < sizeof(TCP_HEADER))
 {

  return 0;
 }

 if (tcp_size < tcp_header_size)
 {

  return 0;
 }

 if (((tcp->Flag & TCP_SYN) == 0) ||
  ((tcp->Flag & TCP_RST) ||
  (tcp->Flag & TCP_PSH) ||
  (tcp->Flag & TCP_URG)))
 {

  return 0;
 }


 options = ((UCHAR *)tcp) + sizeof(TCP_HEADER);
 options_size = tcp_header_size - sizeof(TCP_HEADER);

 if (ip6 != ((void*)0))
 {

  if (mss >= 20)
  {
   mss -= 20;
  }
 }


 mss = MAX(mss, 64);

 if (options_size >= 4 && options[0] == 0x02 && options[1] == 0x04)
 {

  USHORT current_mss = READ_USHORT(((UCHAR *)options) + 2);

  if (current_mss <= mss)
  {


   return 0;
  }
  else
  {
   WRITE_USHORT(((UCHAR *)options) + 2, mss);


   tcp->Checksum = 0;

   if (ip != ((void*)0))
   {

    tcp->Checksum = CalcChecksumForIPv4(ip->SrcIP, ip->DstIP, IP_PROTO_TCP, tcp, tcp_size, 0);
   }
   else
   {

    tcp->Checksum = CalcChecksumForIPv6(&ip6->SrcAddress, &ip6->DestAddress,
     IP_PROTO_TCP, tcp, tcp_size, 0);
   }

   return 1;
  }
 }
 else
 {

  return 0;
 }
}
