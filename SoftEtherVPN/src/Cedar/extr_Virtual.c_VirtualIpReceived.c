
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int VH ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_16__ {int TimeToLive; int Protocol; int Identification; int DstIP; int SrcIP; int TotalLength; } ;
struct TYPE_15__ {int MaxL3Size; } ;
struct TYPE_13__ {TYPE_4__* IPv4Header; scalar_t__ PointerL3; } ;
struct TYPE_14__ {int PacketSize; int BroadcastPacket; TYPE_1__ L3; int MacAddressSrc; } ;
typedef TYPE_2__ PKT ;
typedef TYPE_3__ IP_COMBINE ;
typedef TYPE_4__ IPV4_HEADER ;


 int ArpIpWasKnown (int *,int ,int ) ;
 int CombineIp (int *,TYPE_3__*,int,void*,int,int,int *,int) ;
 int Endian16 (int ) ;
 int IPV4_GET_FLAGS (TYPE_4__*) ;
 int IPV4_GET_HEADER_LEN (TYPE_4__*) ;
 int IPV4_GET_OFFSET (TYPE_4__*) ;
 TYPE_3__* InsertIpCombine (int *,int ,int ,int,int ,int ,int ,int) ;
 int IpCheckChecksum (TYPE_4__*) ;
 int IpReceived (int *,int ,int ,int ,void*,int,int ,int ,int *,int,int,int) ;
 int IsMacAddressLocalFast (int ) ;
 int MAC_HEADER_SIZE ;
 int MAX (int,int) ;
 TYPE_3__* SearchIpCombine (int *,int ,int ,int,int ) ;

void VirtualIpReceived(VH *v, PKT *packet)
{
 IPV4_HEADER *ip;
 void *data;
 UINT data_size_recved;
 UINT size;
 UINT ipv4_header_size;
 bool last_packet;
 UCHAR *head_ip_header_data = ((void*)0);
 UINT head_ip_header_size = 0;
 bool is_local_mac = 0;
 UINT ip_l3_size;

 if (v == ((void*)0) || packet == ((void*)0))
 {
  return;
 }

 ip = packet->L3.IPv4Header;

 if (packet->BroadcastPacket)
 {
  is_local_mac = IsMacAddressLocalFast(packet->MacAddressSrc);
 }


 ipv4_header_size = IPV4_GET_HEADER_LEN(packet->L3.IPv4Header) * 4;
 head_ip_header_size = ipv4_header_size;


 if (IpCheckChecksum(ip) == 0)
 {
  return;
 }


 data = ((UCHAR *)packet->L3.PointerL3) + ipv4_header_size;


 ArpIpWasKnown(v, packet->L3.IPv4Header->SrcIP, packet->MacAddressSrc);


 size = ip_l3_size = Endian16(ip->TotalLength);
 if (size <= ipv4_header_size)
 {

  return;
 }
 size -= ipv4_header_size;


 data_size_recved = packet->PacketSize - (ipv4_header_size + MAC_HEADER_SIZE);
 if (data_size_recved < size)
 {

  return;
 }

 if (IPV4_GET_OFFSET(ip) == 0 && (IPV4_GET_FLAGS(ip) & 0x01) == 0)
 {

  head_ip_header_data = (UCHAR *)packet->L3.IPv4Header;
  IpReceived(v, ip->SrcIP, ip->DstIP, ip->Protocol, data, size, packet->BroadcastPacket, ip->TimeToLive,
   head_ip_header_data, head_ip_header_size, is_local_mac, ip_l3_size);
 }
 else
 {

  UINT offset = IPV4_GET_OFFSET(ip) * 8;
  IP_COMBINE *c = SearchIpCombine(v, ip->SrcIP, ip->DstIP, Endian16(ip->Identification), ip->Protocol);

  if (offset == 0)
  {
   head_ip_header_data = (UCHAR *)packet->L3.IPv4Header;
  }

  last_packet = ((IPV4_GET_FLAGS(ip) & 0x01) == 0 ? 1 : 0);

  if (c != ((void*)0))
  {

   c->MaxL3Size = MAX(c->MaxL3Size, ip_l3_size);
   CombineIp(v, c, offset, data, size, last_packet, head_ip_header_data, head_ip_header_size);
  }
  else
  {

   c = InsertIpCombine(
    v, ip->SrcIP, ip->DstIP, Endian16(ip->Identification), ip->Protocol, packet->BroadcastPacket,
    ip->TimeToLive, is_local_mac);
   if (c != ((void*)0))
   {
    c->MaxL3Size = ip_l3_size;

    CombineIp(v, c, offset, data, size, last_packet, head_ip_header_data, head_ip_header_size);
   }
  }
 }
}
