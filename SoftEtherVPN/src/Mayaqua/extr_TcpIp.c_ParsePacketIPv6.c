
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_10__ {int Protocol; scalar_t__ IsFragment; int PayloadSize; int * Payload; int IPv6Header; } ;
struct TYPE_8__ {int IPv6Header; } ;
struct TYPE_9__ {TYPE_5__ IPv6HeaderPacketInfo; int TypeL4; TYPE_1__ L3; int TypeL3; } ;
typedef TYPE_2__ PKT ;





 int L3_IPV6 ;
 int L4_FRAGMENT ;
 int ParseICMPv6 (TYPE_2__*,int *,int ) ;
 int ParsePacketIPv6Header (TYPE_5__*,int *,int ) ;
 int ParseTCP (TYPE_2__*,int *,int ) ;
 int ParseUDP (TYPE_2__*,int *,int ) ;

bool ParsePacketIPv6(PKT *p, UCHAR *buf, UINT size)
{

 if (p == ((void*)0) || buf == ((void*)0))
 {
  return 0;
 }

 if (ParsePacketIPv6Header(&p->IPv6HeaderPacketInfo, buf, size) == 0)
 {
  return 0;
 }

 p->TypeL3 = L3_IPV6;
 p->L3.IPv6Header = p->IPv6HeaderPacketInfo.IPv6Header;

 if (p->IPv6HeaderPacketInfo.Payload == ((void*)0))
 {

  return 1;
 }

 buf = p->IPv6HeaderPacketInfo.Payload;
 size = p->IPv6HeaderPacketInfo.PayloadSize;

 if (p->IPv6HeaderPacketInfo.IsFragment)
 {

  p->TypeL4 = L4_FRAGMENT;
  return 1;
 }


 switch (p->IPv6HeaderPacketInfo.Protocol)
 {
 case 130:
  if (ParseICMPv6(p, buf, size) == 0)
  {

   return 1;
  }
  else
  {
   return 1;
  }

 case 129:
  return ParseTCP(p, buf, size);

 case 128:
  return ParseUDP(p, buf, size);

 default:
  return 1;
 }

 return 1;
}
