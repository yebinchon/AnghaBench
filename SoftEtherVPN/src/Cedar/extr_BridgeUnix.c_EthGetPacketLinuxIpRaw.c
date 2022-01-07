
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ Size; void* Buf; } ;
struct TYPE_7__ {int RawIp_HasError; int RawIcmp; int RawUdp; int RawTcp; int RawIpSendQueue; } ;
typedef TYPE_1__ ETH ;
typedef TYPE_2__ BUF ;


 scalar_t__ EthGetPacketLinuxIpRawForSock (TYPE_1__*,void**,int ,int ) ;
 int Free (TYPE_2__*) ;
 TYPE_2__* GetNext (int ) ;
 scalar_t__ INFINITE ;
 int IP_PROTO_ICMPV4 ;
 int IP_PROTO_TCP ;
 int IP_PROTO_UDP ;

UINT EthGetPacketLinuxIpRaw(ETH *e, void **data)
{
 UINT r;
 BUF *b;

 if (e == ((void*)0) || data == ((void*)0))
 {
  return INFINITE;
 }
 if (e->RawIp_HasError)
 {
  return INFINITE;
 }

 b = GetNext(e->RawIpSendQueue);
 if (b != ((void*)0))
 {
  UINT size;

  *data = b->Buf;
  size = b->Size;

  Free(b);

  return size;
 }

 r = EthGetPacketLinuxIpRawForSock(e, data, e->RawTcp, IP_PROTO_TCP);
 if (r == 0)
 {
  r = EthGetPacketLinuxIpRawForSock(e, data, e->RawUdp, IP_PROTO_UDP);
  if (r == 0)
  {
   r = EthGetPacketLinuxIpRawForSock(e, data, e->RawIcmp, IP_PROTO_ICMPV4);
  }
 }

 if (r == INFINITE)
 {
  e->RawIp_HasError = 1;
 }

 return r;
}
