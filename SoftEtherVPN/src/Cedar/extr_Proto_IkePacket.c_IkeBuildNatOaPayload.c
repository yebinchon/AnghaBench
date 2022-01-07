
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int h ;
struct TYPE_9__ {TYPE_2__* addr; TYPE_2__* ipv6_addr; } ;
struct TYPE_8__ {int IdType; } ;
struct TYPE_7__ {TYPE_5__ IpAddress; } ;
typedef TYPE_1__ IKE_PACKET_NAT_OA_PAYLOAD ;
typedef TYPE_2__ IKE_NAT_OA_HEADER ;
typedef int BUF ;


 int IKE_ID_IPV4_ADDR ;
 int IKE_ID_IPV6_ADDR ;
 scalar_t__ IsIP6 (TYPE_5__*) ;
 int * NewBuf () ;
 int WriteBuf (int *,TYPE_2__*,int) ;
 int Zero (TYPE_2__*,int) ;

BUF *IkeBuildNatOaPayload(IKE_PACKET_NAT_OA_PAYLOAD *t)
{
 IKE_NAT_OA_HEADER h;
 BUF *ret;

 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 Zero(&h, sizeof(h));

 if (IsIP6(&t->IpAddress))
 {
  h.IdType = IKE_ID_IPV6_ADDR;
 }
 else
 {
  h.IdType = IKE_ID_IPV4_ADDR;
 }

 ret = NewBuf();

 WriteBuf(ret, &h, sizeof(h));

 if (IsIP6(&t->IpAddress))
 {
  WriteBuf(ret, t->IpAddress.ipv6_addr, 16);
 }
 else
 {
  WriteBuf(ret, t->IpAddress.addr, 4);
 }

 return ret;
}
