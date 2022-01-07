
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ip6 ;
typedef int ip4 ;
typedef int ip ;
typedef int h ;
struct TYPE_11__ {int IdType; } ;
typedef TYPE_1__ UCHAR ;
struct TYPE_12__ {int IpAddress; } ;
typedef int IP ;
typedef TYPE_2__ IKE_PACKET_NAT_OA_PAYLOAD ;
typedef TYPE_1__ IKE_NAT_OA_HEADER ;
typedef int BUF ;


 int Copy (int *,int *,int) ;


 int ReadBuf (int *,TYPE_1__*,int) ;
 int SetIP (int *,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ;
 int SetIP6 (int *,TYPE_1__*) ;
 int Zero (int *,int) ;

bool IkeParseNatOaPayload(IKE_PACKET_NAT_OA_PAYLOAD *t, BUF *b)
{
 IKE_NAT_OA_HEADER h;
 UCHAR ip4[4];
 UCHAR ip6[16];
 IP ip;

 if (t == ((void*)0) || b == ((void*)0))
 {
  return 0;
 }

 Zero(&ip, sizeof(ip));

 if (ReadBuf(b, &h, sizeof(h)) != sizeof(h))
 {
  return 0;
 }

 if (h.IdType != 129 && h.IdType != 128)
 {
  return 0;
 }

 switch (h.IdType)
 {
 case 129:
  if (ReadBuf(b, ip4, sizeof(ip4)) != sizeof(ip4))
  {
   return 0;
  }

  SetIP(&ip, ip4[0], ip4[1], ip4[2], ip4[3]);

  break;

 case 128:
  if (ReadBuf(b, ip6, sizeof(ip6)) != sizeof(ip6))
  {
   return 0;
  }

  SetIP6(&ip, ip6);

  break;

 default:
  return 0;
 }

 Copy(&t->IpAddress, &ip, sizeof(IP));

 return 1;
}
