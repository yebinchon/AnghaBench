
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int USHORT ;
typedef int UINT ;
struct TYPE_3__ {int SrcPort; int DstPort; } ;
typedef TYPE_1__ UDP_HEADER ;
typedef int UCHAR ;
struct TYPE_4__ {scalar_t__ Protocol; } ;
typedef TYPE_2__ IPV4_HEADER ;


 scalar_t__ Cmp (int *,int *,int) ;
 int Debug (char*) ;
 int Endian16 (int ) ;
 int GetIpHeaderSize (int *,int) ;
 scalar_t__ IP_PROTO_UDP ;
 scalar_t__ IsZero (int *,int) ;
 scalar_t__ MAC_PROTO_IPV4 ;
 scalar_t__ READ_USHORT (int *) ;

bool IsDhcpPacketForSpecificMac(UCHAR *data, UINT size, UCHAR *mac_address)
{
 USHORT *us;
 IPV4_HEADER *ip;
 UDP_HEADER *udp;
 UINT ip_header_size;
 bool is_send = 0, is_recv = 0;

 if (data == ((void*)0) || mac_address == ((void*)0) || IsZero(mac_address, 6))
 {
  return 0;
 }


 if (size < 14)
 {
  return 0;
 }


 if (Cmp(data, mac_address, 6) == 0)
 {
  is_recv = 1;
 }
 size -= 6;
 data += 6;


 if (Cmp(data, mac_address, 6) == 0)
 {
  is_send = 1;
 }
 size -= 6;
 data += 6;

 if (is_send == 0 && is_recv == 0)
 {
  return 0;
 }
 if (is_send && is_recv)
 {
  return 0;
 }


 us = (USHORT *)data;
 size -= 2;
 data += 2;

 if (READ_USHORT(us) != MAC_PROTO_IPV4)
 {

  return 0;
 }


 ip_header_size = GetIpHeaderSize(data, size);
 if (ip_header_size == 0)
 {

  return 0;
 }

 ip = (IPV4_HEADER *)data;
 data += ip_header_size;
 size -= ip_header_size;

 if (ip->Protocol != IP_PROTO_UDP)
 {

  return 0;
 }


 if (size < sizeof(UDP_HEADER))
 {
  return 0;
 }
 udp = (UDP_HEADER *)data;
 data += sizeof(UDP_HEADER);
 size -= sizeof(UDP_HEADER);

 if (is_send)
 {

  if (Endian16(udp->DstPort) == 67)
  {
   Debug("IsDhcpPacketForSpecificMac: DHCP Request Packet is Detected.\n");
   return 1;
  }
 }
 else if (is_recv)
 {

  if (Endian16(udp->SrcPort) == 67)
  {
   Debug("IsDhcpPacketForSpecificMac: DHCP Response Packet is Detected.\n");
   return 1;
  }
 }

 return 0;
}
