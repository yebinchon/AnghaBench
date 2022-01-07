
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int UDP_HEADER ;
struct TYPE_11__ {int * NeighborAdvertisementHeader; int * NeighborSoliciationHeader; int * RouterAdvertisementHeader; int * RouterSoliciationHeader; } ;
struct TYPE_16__ {int PayloadSize; int DataSize; int EchoDataSize; int DestAddress; int SrcAddress; int OptionList; TYPE_1__ Headers; int Type; int * EchoData; int * Data; int * Payload; int * FragmentHeader; int * RoutingHeader; int * EndPointHeader; int * HopHeader; int * IPv6Header; } ;
struct TYPE_12__ {TYPE_7__* IkeHeader; TYPE_7__* DHCPv4Header; } ;
struct TYPE_14__ {TYPE_7__* UDPHeader; TYPE_7__* TCPHeader; TYPE_7__* ICMPHeader; } ;
struct TYPE_13__ {TYPE_7__* IPv6Header; TYPE_7__* IPv4Header; TYPE_7__* ARPv4Header; } ;
struct TYPE_15__ {int PacketSize; int TypeL3; int TypeL4; int TypeL7; int * HttpLog; TYPE_7__* PacketData; TYPE_7__* MacHeader; int MacAddressDest; int MacAddressSrc; int DnsQueryHost; TYPE_2__ L7; TYPE_4__ L4; TYPE_7__ ICMPv6HeaderPacketInfo; TYPE_7__ IPv6HeaderPacketInfo; TYPE_3__ L3; int InvalidSourcePacket; int BroadcastPacket; } ;
typedef int TCP_HEADER ;
typedef TYPE_5__ PKT ;
typedef int MAC_HEADER ;
typedef int IPV6_OPTION_HEADER ;
typedef int IPV6_HEADER_PACKET_INFO ;
typedef int IPV6_HEADER ;
typedef int IPV6_FRAGMENT_HEADER ;
typedef int IPV4_HEADER ;
typedef int IKE_HEADER ;
typedef int ICMP_HEADER ;
typedef int ICMPV6_ROUTER_SOLICIATION_HEADER ;
typedef int ICMPV6_ROUTER_ADVERTISEMENT_HEADER ;
typedef int ICMPV6_NEIGHBOR_SOLICIATION_HEADER ;
typedef int ICMPV6_NEIGHBOR_ADVERTISEMENT_HEADER ;
typedef int ICMPV6_HEADER_INFO ;
typedef int HTTPLOG ;
typedef int DHCPV4_HEADER ;
typedef int ARPV4_HEADER ;


 void* Clone (int *,int) ;
 int CloneICMPv6Options (int *,int *) ;
 int Copy (TYPE_7__*,TYPE_7__*,int) ;
 void* MallocFast (int) ;
 int StrCpy (int ,int,int ) ;
 TYPE_5__* ZeroMallocFast (int) ;

PKT *ClonePacket(PKT *p, bool copy_data)
{
 PKT *ret;

 if (p == ((void*)0))
 {
  return ((void*)0);
 }

 ret = ZeroMallocFast(sizeof(PKT));
 ret->PacketSize = p->PacketSize;


 ret->MacHeader = MallocFast(sizeof(MAC_HEADER));
 Copy(ret->MacHeader, p->MacHeader, sizeof(MAC_HEADER));


 ret->BroadcastPacket = p->BroadcastPacket;
 ret->InvalidSourcePacket = p->InvalidSourcePacket;


 Copy(&ret->IPv6HeaderPacketInfo, &p->IPv6HeaderPacketInfo, sizeof(IPV6_HEADER_PACKET_INFO));
 Copy(&ret->ICMPv6HeaderPacketInfo, &p->ICMPv6HeaderPacketInfo, sizeof(ICMPV6_HEADER_INFO));


 ret->TypeL3 = p->TypeL3;
 switch (ret->TypeL3)
 {
 case 137:

  ret->L3.ARPv4Header = MallocFast(sizeof(ARPV4_HEADER));
  Copy(ret->L3.ARPv4Header, p->L3.ARPv4Header, sizeof(ARPV4_HEADER));
  break;

 case 136:

  ret->L3.IPv4Header = MallocFast(sizeof(IPV4_HEADER));
  Copy(ret->L3.IPv4Header, p->L3.IPv4Header, sizeof(IPV4_HEADER));
  break;

 case 135:

  ret->L3.IPv6Header = MallocFast(sizeof(IPV6_HEADER));
  Copy(ret->L3.IPv6Header, p->L3.IPv6Header, sizeof(IPV6_HEADER));

  ret->IPv6HeaderPacketInfo.IPv6Header = Clone(p->IPv6HeaderPacketInfo.IPv6Header,
   sizeof(IPV6_HEADER));

  ret->IPv6HeaderPacketInfo.HopHeader = Clone(p->IPv6HeaderPacketInfo.HopHeader,
   sizeof(IPV6_OPTION_HEADER));

  ret->IPv6HeaderPacketInfo.EndPointHeader = Clone(p->IPv6HeaderPacketInfo.EndPointHeader,
   sizeof(IPV6_OPTION_HEADER));

  ret->IPv6HeaderPacketInfo.RoutingHeader = Clone(p->IPv6HeaderPacketInfo.RoutingHeader,
   sizeof(IPV6_OPTION_HEADER));

  ret->IPv6HeaderPacketInfo.FragmentHeader = Clone(p->IPv6HeaderPacketInfo.FragmentHeader,
   sizeof(IPV6_FRAGMENT_HEADER));

  ret->IPv6HeaderPacketInfo.Payload = Clone(p->IPv6HeaderPacketInfo.Payload,
   p->IPv6HeaderPacketInfo.PayloadSize);
  break;
 }


 ret->TypeL4 = p->TypeL4;
 switch (ret->TypeL4)
 {
 case 134:

  ret->L4.ICMPHeader = MallocFast(sizeof(ICMP_HEADER));
  Copy(ret->L4.ICMPHeader, p->L4.ICMPHeader, sizeof(ICMP_HEADER));
  break;

 case 133:

  ret->L4.ICMPHeader = MallocFast(sizeof(ICMP_HEADER));
  Copy(ret->L4.ICMPHeader, p->L4.ICMPHeader, sizeof(ICMP_HEADER));

  ret->ICMPv6HeaderPacketInfo.Data = Clone(p->ICMPv6HeaderPacketInfo.Data,
   p->ICMPv6HeaderPacketInfo.DataSize);

  ret->ICMPv6HeaderPacketInfo.EchoData = Clone(p->ICMPv6HeaderPacketInfo.EchoData,
   p->ICMPv6HeaderPacketInfo.EchoDataSize);

  switch (ret->ICMPv6HeaderPacketInfo.Type)
  {
  case 143:
  case 142:
   break;

  case 138:
   ret->ICMPv6HeaderPacketInfo.Headers.RouterSoliciationHeader =
    Clone(p->ICMPv6HeaderPacketInfo.Headers.RouterSoliciationHeader,
    sizeof(ICMPV6_ROUTER_SOLICIATION_HEADER));
   break;

  case 139:
   ret->ICMPv6HeaderPacketInfo.Headers.RouterAdvertisementHeader =
    Clone(p->ICMPv6HeaderPacketInfo.Headers.RouterAdvertisementHeader,
    sizeof(ICMPV6_ROUTER_ADVERTISEMENT_HEADER));
   break;

  case 140:
   ret->ICMPv6HeaderPacketInfo.Headers.NeighborSoliciationHeader =
    Clone(p->ICMPv6HeaderPacketInfo.Headers.NeighborSoliciationHeader,
    sizeof(ICMPV6_NEIGHBOR_SOLICIATION_HEADER));
   break;

  case 141:
   ret->ICMPv6HeaderPacketInfo.Headers.NeighborAdvertisementHeader =
    Clone(p->ICMPv6HeaderPacketInfo.Headers.NeighborAdvertisementHeader,
    sizeof(ICMPV6_NEIGHBOR_ADVERTISEMENT_HEADER));
   break;
  }

  CloneICMPv6Options(&ret->ICMPv6HeaderPacketInfo.OptionList,
   &p->ICMPv6HeaderPacketInfo.OptionList);
  break;

 case 132:

  ret->L4.TCPHeader = MallocFast(sizeof(TCP_HEADER));
  Copy(ret->L4.TCPHeader, p->L4.TCPHeader, sizeof(TCP_HEADER));
  break;

 case 131:

  ret->L4.UDPHeader = MallocFast(sizeof(UDP_HEADER));
  Copy(ret->L4.UDPHeader, p->L4.UDPHeader, sizeof(UDP_HEADER));
  break;
 }


 ret->TypeL7 = p->TypeL7;
 switch (ret->TypeL7)
 {
 case 130:

  ret->L7.DHCPv4Header = MallocFast(sizeof(DHCPV4_HEADER));
  Copy(ret->L7.DHCPv4Header, p->L7.DHCPv4Header, sizeof(DHCPV4_HEADER));
  break;

 case 128:

  ret->L7.IkeHeader = MallocFast(sizeof(IKE_HEADER));
  Copy(ret->L7.IkeHeader, p->L7.IkeHeader, sizeof(IKE_HEADER));
  break;

  case 129:
   StrCpy(ret->DnsQueryHost, sizeof(ret->DnsQueryHost), p->DnsQueryHost);
   break;
 }


 ret->MacAddressSrc = ret->MacHeader->SrcAddress;
 ret->MacAddressDest = ret->MacHeader->DestAddress;

 if (copy_data)
 {

  ret->PacketData = MallocFast(p->PacketSize);
  Copy(ret->PacketData, p->PacketData, p->PacketSize);
 }

 if (p->HttpLog != ((void*)0))
 {
  ret->HttpLog = Clone(p->HttpLog, sizeof(HTTPLOG));
 }

 return ret;
}
