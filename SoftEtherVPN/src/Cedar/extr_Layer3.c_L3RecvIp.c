
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int USHORT ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_28__ {scalar_t__ SrcIP; int TimeToLive; scalar_t__ DstIP; int Type; void* Checksum; scalar_t__* FlagsAndFragmentOffset; void* Protocol; void* TotalLength; } ;
struct TYPE_27__ {scalar_t__ IpAddress; int Switch; } ;
struct TYPE_26__ {int NextHopIp; TYPE_3__* Packet; scalar_t__ Expire; } ;
struct TYPE_24__ {TYPE_6__* IPv4Header; } ;
struct TYPE_23__ {TYPE_6__* ICMPHeader; } ;
struct TYPE_25__ {int PacketSize; scalar_t__ TypeL4; int* PacketData; TYPE_2__ L3; TYPE_1__ L4; scalar_t__ BroadcastPacket; int MacAddressSrc; } ;
typedef TYPE_3__ PKT ;
typedef int MAC_HEADER ;
typedef TYPE_4__ L3PACKET ;
typedef TYPE_5__ L3IF ;
typedef TYPE_6__ IPV4_HEADER ;
typedef TYPE_6__ ICMP_HEADER ;


 int Copy (int*,TYPE_6__*,int) ;
 void* Endian16 (int ) ;
 int Free (int*) ;
 int FreePacket (TYPE_3__*) ;
 scalar_t__ ICMP_TYPE_ECHO_REQUEST ;
 scalar_t__ ICMP_TYPE_ECHO_RESPONSE ;
 int IPV4_GET_HEADER_LEN (TYPE_6__*) ;
 int IPV4_SET_HEADER_LEN (TYPE_6__*,int) ;
 int IPV4_SET_VERSION (TYPE_6__*,int) ;
 void* IP_PROTO_ICMPV4 ;
 scalar_t__ IP_WAIT_FOR_ARP_TIMEOUT ;
 int IpCheckChecksum (TYPE_6__*) ;
 void* IpChecksum (TYPE_6__*,int) ;
 TYPE_5__* L3GetNextIf (int ,scalar_t__,int*) ;
 int L3KnownArp (TYPE_5__*,scalar_t__,int ) ;
 int L3StoreIpPacketToIf (TYPE_5__*,TYPE_5__*,TYPE_4__*) ;
 scalar_t__ L4_ICMPV4 ;
 int MIN (int,int) ;
 TYPE_3__* ParsePacket (int*,int) ;
 scalar_t__ Tick64 () ;
 void* ZeroMalloc (int) ;

void L3RecvIp(L3IF *f, PKT *p, bool self)
{
 IPV4_HEADER *ip;
 UINT header_size;
 UINT next_hop = 0;
 L3IF *dst;
 L3PACKET *packet;
 UINT new_ttl = 0;

 if (f == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 ip = p->L3.IPv4Header;
 header_size = IPV4_GET_HEADER_LEN(p->L3.IPv4Header) * 4;


 if (IpCheckChecksum(ip) == 0)
 {

  goto FREE_PACKET;
 }


 L3KnownArp(f, ip->SrcIP, p->MacAddressSrc);

 if (p->BroadcastPacket)
 {

  goto FREE_PACKET;
 }


 if (ip->TimeToLive >= 1)
 {
  new_ttl = ip->TimeToLive - 1;
 }
 else
 {
  new_ttl = 0;
 }

 if (new_ttl == 0)
 {
  if (ip->DstIP != f->IpAddress)
  {
   UINT src_packet_size = p->PacketSize - sizeof(MAC_HEADER);
   UINT icmp_packet_total_size = sizeof(MAC_HEADER) + sizeof(IPV4_HEADER) + sizeof(ICMP_HEADER) + 4 + header_size + 8;
   UCHAR *buf;
   IPV4_HEADER *ipv4;
   ICMP_HEADER *icmpv4;
   UCHAR *data;
   PKT *pkt;
   UINT data_size = MIN(p->PacketSize - header_size, header_size + 8);


   buf = ZeroMalloc(icmp_packet_total_size);
   ipv4 = (IPV4_HEADER *)(buf + sizeof(MAC_HEADER));
   icmpv4 = (ICMP_HEADER *)(buf + sizeof(MAC_HEADER) + sizeof(IPV4_HEADER));
   data = buf + sizeof(MAC_HEADER) + sizeof(IPV4_HEADER) + sizeof(ICMP_HEADER) + 4;

   IPV4_SET_VERSION(ipv4, 4);
   IPV4_SET_HEADER_LEN(ipv4, sizeof(IPV4_HEADER) / 4);
   ipv4->TotalLength = Endian16((USHORT)(icmp_packet_total_size - sizeof(MAC_HEADER)));
   ipv4->TimeToLive = 0xff;
   ipv4->Protocol = IP_PROTO_ICMPV4;
   ipv4->SrcIP = f->IpAddress;
   ipv4->DstIP = ip->SrcIP;
   ipv4->Checksum = IpChecksum(ipv4, sizeof(IPV4_HEADER));

   icmpv4->Type = 11;
   Copy(data, ip, data_size);
   icmpv4->Checksum = IpChecksum(icmpv4, sizeof(ICMP_HEADER) + data_size + 4);

   buf[12] = 0x08;
   buf[13] = 0x00;

   pkt = ParsePacket(buf, icmp_packet_total_size);
   if (pkt == ((void*)0))
   {
    Free(buf);
   }
   else
   {
    L3RecvIp(f, pkt, 1);
   }


   goto FREE_PACKET;
  }
 }


 p->L3.IPv4Header->TimeToLive = (UCHAR)new_ttl;


 dst = L3GetNextIf(f->Switch, ip->DstIP, &next_hop);

 if (dst == ((void*)0) && self == 0)
 {
  UINT src_packet_size = p->PacketSize - sizeof(MAC_HEADER);
  UINT icmp_packet_total_size = sizeof(MAC_HEADER) + sizeof(IPV4_HEADER) + sizeof(ICMP_HEADER) + 4 + header_size + 8;
  UCHAR *buf;
  IPV4_HEADER *ipv4;
  ICMP_HEADER *icmpv4;
  UCHAR *data;
  PKT *pkt;
   UINT data_size = MIN(p->PacketSize - header_size, header_size + 8);


  buf = ZeroMalloc(icmp_packet_total_size);
  ipv4 = (IPV4_HEADER *)(buf + sizeof(MAC_HEADER));
  icmpv4 = (ICMP_HEADER *)(buf + sizeof(MAC_HEADER) + sizeof(IPV4_HEADER));
  data = buf + sizeof(MAC_HEADER) + sizeof(IPV4_HEADER) + sizeof(ICMP_HEADER) + 4;

  IPV4_SET_VERSION(ipv4, 4);
  IPV4_SET_HEADER_LEN(ipv4, sizeof(IPV4_HEADER) / 4);
  ipv4->TotalLength = Endian16((USHORT)(icmp_packet_total_size - sizeof(MAC_HEADER)));
  ipv4->TimeToLive = 0xff;
  ipv4->Protocol = IP_PROTO_ICMPV4;
  ipv4->SrcIP = f->IpAddress;
  ipv4->DstIP = ip->SrcIP;
  ipv4->Checksum = IpChecksum(ipv4, sizeof(IPV4_HEADER));

  icmpv4->Type = 3;
  Copy(data, ip, data_size);
  icmpv4->Checksum = IpChecksum(icmpv4, sizeof(ICMP_HEADER) + data_size + 4);

  buf[12] = 0x08;
  buf[13] = 0x00;

  pkt = ParsePacket(buf, icmp_packet_total_size);
  if (pkt == ((void*)0))
  {
   Free(buf);
  }
  else
  {
   L3RecvIp(f, pkt, 1);
  }


  goto FREE_PACKET;
 }

 if (dst != ((void*)0) && ip->DstIP == dst->IpAddress)
 {
  bool free_packet = 1;

  if (p->TypeL4 == L4_ICMPV4)
  {
   ICMP_HEADER *icmp = p->L4.ICMPHeader;
   if (icmp->Type == ICMP_TYPE_ECHO_REQUEST)
   {

    UINT src_ip, dst_ip;
    src_ip = p->L3.IPv4Header->DstIP;
    dst_ip = p->L3.IPv4Header->SrcIP;

    p->L3.IPv4Header->DstIP = dst_ip;
    p->L3.IPv4Header->SrcIP = src_ip;

    ip->TimeToLive = 0xff;


    ip->FlagsAndFragmentOffset[0] = ip->FlagsAndFragmentOffset[1] = 0;
    icmp->Checksum = 0;
    icmp->Type = ICMP_TYPE_ECHO_RESPONSE;
    icmp->Checksum = IpChecksum(icmp, p->PacketSize - sizeof(MAC_HEADER) - header_size);

    dst = L3GetNextIf(f->Switch, ip->DstIP, &next_hop);

    free_packet = 0;
   }
  }

  if (free_packet)
  {
   goto FREE_PACKET;
  }
 }

 if (dst == ((void*)0))
 {

  goto FREE_PACKET;
 }


 ip->Checksum = 0;
 ip->Checksum = IpChecksum(ip, header_size);


 packet = ZeroMalloc(sizeof(L3PACKET));
 packet->Expire = Tick64() + IP_WAIT_FOR_ARP_TIMEOUT;
 packet->NextHopIp = next_hop;
 packet->Packet = p;


 L3StoreIpPacketToIf(f, dst, packet);

 return;

FREE_PACKET:

 Free(p->PacketData);
 FreePacket(p);
 return;
}
