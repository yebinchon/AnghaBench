
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ip_header ;
typedef int info ;
typedef int UINT ;
typedef void* UCHAR ;
struct TYPE_6__ {int PayloadSize; void* Payload; void* Protocol; struct TYPE_6__* IPv6Header; int DestAddress; int SrcAddress; void* HopLimit; } ;
typedef TYPE_1__ IPV6_HEADER_PACKET_INFO ;
typedef TYPE_1__ IPV6_HEADER ;
typedef int IPV6_ADDR ;
typedef int BUF ;


 int * BuildIPv6PacketHeader (TYPE_1__*,int *) ;
 int Copy (int *,int *,int) ;
 int IPV6_SET_VERSION (TYPE_1__*,int) ;
 int Zero (TYPE_1__*,int) ;

BUF *BuildIPv6(IPV6_ADDR *dest_ip, IPV6_ADDR *src_ip, UINT id, UCHAR protocol, UCHAR hop_limit, void *data,
      UINT size)
{
 IPV6_HEADER_PACKET_INFO info;
 IPV6_HEADER ip_header;
 BUF *buf;
 UINT size_for_headers;

 if (dest_ip == ((void*)0) || src_ip == ((void*)0) || data == ((void*)0))
 {
  return ((void*)0);
 }
 if (hop_limit == 0)
 {
  hop_limit = 255;
 }


 Zero(&ip_header, sizeof(ip_header));
 IPV6_SET_VERSION(&ip_header, 6);
 ip_header.HopLimit = hop_limit;
 Copy(&ip_header.SrcAddress, src_ip, sizeof(IPV6_ADDR));
 Copy(&ip_header.DestAddress, dest_ip, sizeof(IPV6_ADDR));


 Zero(&info, sizeof(info));
 info.IPv6Header = &ip_header;
 info.Protocol = protocol;
 info.Payload = data;
 info.PayloadSize = size;

 buf = BuildIPv6PacketHeader(&info, &size_for_headers);
 if (buf == ((void*)0))
 {
  return ((void*)0);
 }

 return buf;
}
