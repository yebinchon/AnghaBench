
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int USHORT ;
typedef int UINT ;
struct TYPE_14__ {void* NextHeader; } ;
struct TYPE_13__ {int Size; scalar_t__ Buf; } ;
struct TYPE_12__ {int PayloadLength; } ;
struct TYPE_11__ {int PayloadSize; TYPE_5__* Payload; int Protocol; TYPE_5__* FragmentHeader; int RoutingHeaderSize; int * RoutingHeader; int EndPointHeaderSize; int * EndPointHeader; int HopHeaderSize; int * HopHeader; TYPE_5__* IPv6Header; } ;
typedef int QUEUE ;
typedef TYPE_1__ IPV6_HEADER_PACKET_INFO ;
typedef TYPE_2__ IPV6_HEADER ;
typedef int IPV6_FRAGMENT_HEADER ;
typedef TYPE_3__ BUF ;


 int BuildAndAddIPv6PacketOptionHeader (TYPE_3__*,int *,void*,int ) ;
 int Endian16 (int) ;
 int IPV6_HEADER_ENDPOINT ;
 int IPV6_HEADER_FRAGMENT ;
 int IPV6_HEADER_HOP ;
 int IPV6_HEADER_NONE ;
 int IPV6_HEADER_ROUTING ;
 void* IPv6GetNextHeaderFromQueue (int *) ;
 int InsertQueueInt (int *,int ) ;
 TYPE_3__* NewBuf () ;
 int * NewQueueFast () ;
 int ReleaseQueue (int *) ;
 int SeekBuf (TYPE_3__*,int ,int ) ;
 int WriteBuf (TYPE_3__*,TYPE_5__*,int) ;

BUF *BuildIPv6PacketHeader(IPV6_HEADER_PACKET_INFO *info, UINT *bytes_before_payload)
{
 BUF *b;
 QUEUE *q;
 UINT bbp = 0;

 if (info == ((void*)0))
 {
  return ((void*)0);
 }

 b = NewBuf();
 q = NewQueueFast();


 if (info->HopHeader != ((void*)0))
 {
  InsertQueueInt(q, IPV6_HEADER_HOP);
 }
 if (info->EndPointHeader != ((void*)0))
 {
  InsertQueueInt(q, IPV6_HEADER_ENDPOINT);
 }
 if (info->RoutingHeader != ((void*)0))
 {
  InsertQueueInt(q, IPV6_HEADER_ROUTING);
 }
 if (info->FragmentHeader != ((void*)0))
 {
  InsertQueueInt(q, IPV6_HEADER_FRAGMENT);
 }
 InsertQueueInt(q, info->Protocol);


 info->IPv6Header->NextHeader = IPv6GetNextHeaderFromQueue(q);
 WriteBuf(b, info->IPv6Header, sizeof(IPV6_HEADER));


 if (info->HopHeader != ((void*)0))
 {
  BuildAndAddIPv6PacketOptionHeader(b, info->HopHeader,
   IPv6GetNextHeaderFromQueue(q), info->HopHeaderSize);
 }


 if (info->EndPointHeader != ((void*)0))
 {
  BuildAndAddIPv6PacketOptionHeader(b, info->EndPointHeader,
   IPv6GetNextHeaderFromQueue(q), info->EndPointHeaderSize);
 }


 if (info->RoutingHeader != ((void*)0))
 {
  BuildAndAddIPv6PacketOptionHeader(b, info->RoutingHeader,
   IPv6GetNextHeaderFromQueue(q), info->RoutingHeaderSize);
 }


 if (info->FragmentHeader != ((void*)0))
 {
  info->FragmentHeader->NextHeader = IPv6GetNextHeaderFromQueue(q);
  WriteBuf(b, info->FragmentHeader, sizeof(IPV6_FRAGMENT_HEADER));
 }

 bbp = b->Size;
 if (info->FragmentHeader == ((void*)0))
 {
  bbp += sizeof(IPV6_FRAGMENT_HEADER);
 }


 if (info->Protocol != IPV6_HEADER_NONE)
 {
  WriteBuf(b, info->Payload, info->PayloadSize);
 }

 ReleaseQueue(q);

 SeekBuf(b, 0, 0);


 ((IPV6_HEADER *)b->Buf)->PayloadLength = Endian16(b->Size - (USHORT)sizeof(IPV6_HEADER));

 if (bytes_before_payload != ((void*)0))
 {


  *bytes_before_payload = bbp;
 }

 return b;
}
