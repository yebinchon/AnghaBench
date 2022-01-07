
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int icmp_info ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_13__ {scalar_t__ HeaderPointer; int * NeighborAdvertisementHeader; int * NeighborSoliciationHeader; int * RouterAdvertisementHeader; int * RouterSoliciationHeader; } ;
struct TYPE_12__ {void* SeqNo; void* Identifier; } ;
struct TYPE_17__ {int Type; int DataSize; int EchoDataSize; TYPE_3__ Headers; int OptionList; int * Data; int * EchoData; TYPE_2__ EchoHeader; int Code; } ;
struct TYPE_16__ {int SeqNo; int Identifier; } ;
struct TYPE_15__ {int Type; int Code; } ;
struct TYPE_11__ {TYPE_5__* ICMPHeader; } ;
struct TYPE_14__ {int ICMPv6HeaderPacketInfo; int TypeL4; TYPE_1__ L4; } ;
typedef TYPE_4__ PKT ;
typedef TYPE_5__ ICMP_HEADER ;
typedef TYPE_6__ ICMP_ECHO ;
typedef int ICMPV6_ROUTER_SOLICIATION_HEADER ;
typedef int ICMPV6_ROUTER_ADVERTISEMENT_HEADER ;
typedef int ICMPV6_NEIGHBOR_SOLICIATION_HEADER ;
typedef int ICMPV6_NEIGHBOR_ADVERTISEMENT_HEADER ;
typedef TYPE_7__ ICMPV6_HEADER_INFO ;


 int Copy (int *,TYPE_7__*,int) ;
 void* Endian16 (int ) ;






 int L4_ICMPV6 ;
 int ParseICMPv6Options (int *,int *,int) ;
 int Zero (TYPE_7__*,int) ;

bool ParseICMPv6(PKT *p, UCHAR *buf, UINT size)
{
 ICMPV6_HEADER_INFO icmp_info;
 ICMP_HEADER *icmp;
 ICMP_ECHO *echo;
 UINT msg_size;

 if (p == ((void*)0) || buf == ((void*)0))
 {
  return 0;
 }

 Zero(&icmp_info, sizeof(icmp_info));

 if (size < sizeof(ICMP_HEADER))
 {
  return 0;
 }

 icmp = (ICMP_HEADER *)buf;
 p->L4.ICMPHeader = icmp;

 msg_size = size - sizeof(ICMP_HEADER);

 icmp_info.Type = icmp->Type;
 icmp_info.Code = icmp->Code;
 icmp_info.Data = ((UCHAR *)buf) + sizeof(ICMP_HEADER);
 icmp_info.DataSize = msg_size;

 switch (icmp_info.Type)
 {
 case 133:
 case 132:

  if (icmp_info.DataSize < sizeof(ICMP_ECHO))
  {
   return 0;
  }

  echo = (ICMP_ECHO *)icmp_info.Data;

  icmp_info.EchoHeader.Identifier = Endian16(echo->Identifier);
  icmp_info.EchoHeader.SeqNo = Endian16(echo->SeqNo);
  icmp_info.EchoData = (UCHAR *)echo + sizeof(ICMP_ECHO);
  icmp_info.EchoDataSize = icmp_info.DataSize - sizeof(ICMP_ECHO);

  break;

 case 128:

  if (icmp_info.DataSize < sizeof(ICMPV6_ROUTER_SOLICIATION_HEADER))
  {
   return 0;
  }

  icmp_info.Headers.RouterSoliciationHeader =
   (ICMPV6_ROUTER_SOLICIATION_HEADER *)(((UCHAR *)icmp_info.Data));

  if (ParseICMPv6Options(&icmp_info.OptionList, ((UCHAR *)icmp_info.Headers.HeaderPointer) + sizeof(ICMPV6_ROUTER_SOLICIATION_HEADER),
   icmp_info.DataSize - sizeof(ICMPV6_ROUTER_SOLICIATION_HEADER)) == 0)
  {
   return 0;
  }

  break;

 case 129:

  if (icmp_info.DataSize < sizeof(ICMPV6_ROUTER_ADVERTISEMENT_HEADER))
  {
   return 0;
  }

  icmp_info.Headers.RouterAdvertisementHeader =
   (ICMPV6_ROUTER_ADVERTISEMENT_HEADER *)(((UCHAR *)icmp_info.Data));

  if (ParseICMPv6Options(&icmp_info.OptionList, ((UCHAR *)icmp_info.Headers.HeaderPointer) + sizeof(ICMPV6_ROUTER_ADVERTISEMENT_HEADER),
   icmp_info.DataSize - sizeof(ICMPV6_ROUTER_ADVERTISEMENT_HEADER)) == 0)
  {
   return 0;
  }

  break;

 case 130:

  if (icmp_info.DataSize < sizeof(ICMPV6_NEIGHBOR_SOLICIATION_HEADER))
  {
   return 0;
  }

  icmp_info.Headers.NeighborSoliciationHeader =
   (ICMPV6_NEIGHBOR_SOLICIATION_HEADER *)(((UCHAR *)icmp_info.Data));

  if (ParseICMPv6Options(&icmp_info.OptionList, ((UCHAR *)icmp_info.Headers.HeaderPointer) + sizeof(ICMPV6_NEIGHBOR_SOLICIATION_HEADER),
   icmp_info.DataSize - sizeof(ICMPV6_NEIGHBOR_SOLICIATION_HEADER)) == 0)
  {
   return 0;
  }

  break;

 case 131:

  if (icmp_info.DataSize < sizeof(ICMPV6_NEIGHBOR_ADVERTISEMENT_HEADER))
  {
   return 0;
  }

  icmp_info.Headers.NeighborAdvertisementHeader =
   (ICMPV6_NEIGHBOR_ADVERTISEMENT_HEADER *)(((UCHAR *)icmp_info.Data));

  if (ParseICMPv6Options(&icmp_info.OptionList, ((UCHAR *)icmp_info.Headers.HeaderPointer) + sizeof(ICMPV6_NEIGHBOR_ADVERTISEMENT_HEADER),
   icmp_info.DataSize - sizeof(ICMPV6_NEIGHBOR_ADVERTISEMENT_HEADER)) == 0)
  {
   return 0;
  }

  break;
 }

 p->TypeL4 = L4_ICMPV6;
 Copy(&p->ICMPv6HeaderPacketInfo, &icmp_info, sizeof(ICMPV6_HEADER_INFO));

 return 1;
}
