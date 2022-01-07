
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_3__ {int TotalHeaderSize; int * IPv6Header; } ;
typedef int TCP_HEADER ;
typedef TYPE_1__ IPV6_HEADER_PACKET_INFO ;
typedef int IPV6_HEADER ;
typedef int IPV4_HEADER ;


 int IPV4_GET_HEADER_LEN (int *) ;
 int ParsePacketIPv6Header (TYPE_1__*,int*,int) ;

UINT GetIpHeaderSize(UCHAR *src, UINT src_size)
{
 UCHAR ip_ver;
 TCP_HEADER *tcp = ((void*)0);
 IPV4_HEADER *ip = ((void*)0);
 IPV6_HEADER *ip6 = ((void*)0);

 if (src == ((void*)0) || src_size == 0)
 {
  return 0;
 }


 ip_ver = (src[0] >> 4) & 0x0f;

 if (ip_ver == 4)
 {

  UINT ip_header_size;
  if (src_size < sizeof(IPV4_HEADER))
  {

   return 0;
  }

  ip = (IPV4_HEADER *)src;

  ip_header_size = IPV4_GET_HEADER_LEN(ip) * 4;
  if (ip_header_size < sizeof(IPV4_HEADER))
  {

   return 0;
  }

  if (src_size < ip_header_size)
  {

   return 0;
  }

  return ip_header_size;
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

  if (src_size < v6.TotalHeaderSize)
  {

   return 0;
  }

  return v6.TotalHeaderSize;
 }
 else
 {

  return 0;
 }
}
