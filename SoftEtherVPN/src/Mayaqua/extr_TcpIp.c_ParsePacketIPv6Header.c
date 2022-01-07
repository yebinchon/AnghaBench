
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_8__ {int NextHeader; } ;
struct TYPE_7__ {int TotalHeaderSize; TYPE_2__* IPv6Header; int * Payload; } ;
typedef TYPE_1__ IPV6_HEADER_PACKET_INFO ;
typedef TYPE_2__ IPV6_HEADER ;


 int IPV6_GET_VERSION (TYPE_2__*) ;
 int ParseIPv6ExtHeader (TYPE_1__*,int ,int *,int) ;
 int Zero (TYPE_1__*,int) ;

bool ParsePacketIPv6Header(IPV6_HEADER_PACKET_INFO *info, UCHAR *buf, UINT size)
{

 if (info == ((void*)0) || buf == ((void*)0))
 {
  Zero(info, sizeof(IPV6_HEADER_PACKET_INFO));
  return 0;
 }

 Zero(info, sizeof(IPV6_HEADER_PACKET_INFO));


 if (size < sizeof(IPV6_HEADER))
 {

  return 0;
 }

 info->IPv6Header = (IPV6_HEADER *)buf;
 buf += sizeof(IPV6_HEADER);
 size -= sizeof(IPV6_HEADER);

 if (IPV6_GET_VERSION(info->IPv6Header) != 6)
 {

  return 0;
 }


 if (ParseIPv6ExtHeader(info, info->IPv6Header->NextHeader, buf, size) == 0)
 {
  return 0;
 }


 if (info->Payload != ((void*)0))
 {
  info->TotalHeaderSize = (UINT)((UINT64)(info->Payload) - (UINT64)(info->IPv6Header));
 }

 return 1;
}
