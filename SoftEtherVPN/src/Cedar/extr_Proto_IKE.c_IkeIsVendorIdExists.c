
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef scalar_t__ UINT ;
struct TYPE_17__ {int Size; int Buf; } ;
struct TYPE_16__ {int PayloadList; } ;
struct TYPE_13__ {TYPE_10__* Data; } ;
struct TYPE_14__ {TYPE_1__ VendorId; } ;
struct TYPE_15__ {TYPE_2__ Payload; } ;
struct TYPE_12__ {int Buf; int Size; } ;
typedef TYPE_3__ IKE_PACKET_PAYLOAD ;
typedef TYPE_4__ IKE_PACKET ;
typedef TYPE_5__ BUF ;


 scalar_t__ Cmp (int ,int ,int ) ;
 scalar_t__ CompareBuf (TYPE_10__*,TYPE_5__*) ;
 int FreeBuf (TYPE_5__*) ;
 int IKE_PAYLOAD_VENDOR_ID ;
 TYPE_3__* IkeGetPayload (int ,int ,scalar_t__) ;
 scalar_t__ IkeGetPayloadNum (int ,int ) ;
 TYPE_5__* IkeStrToVendorId (char*) ;

bool IkeIsVendorIdExists(IKE_PACKET *p, char *str)
{
 BUF *buf;
 UINT i, num;
 bool ok = 0;

 if (p == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 buf = IkeStrToVendorId(str);
 if (buf == ((void*)0))
 {
  return 0;
 }

 num = IkeGetPayloadNum(p->PayloadList, IKE_PAYLOAD_VENDOR_ID);
 for (i = 0;i < num;i++)
 {
  IKE_PACKET_PAYLOAD *payload = IkeGetPayload(p->PayloadList, IKE_PAYLOAD_VENDOR_ID, i);
  if (payload == ((void*)0))
  {
   return 0;
  }

  if (CompareBuf(payload->Payload.VendorId.Data, buf))
  {
   ok = 1;
  }
  else
  {
   if (payload->Payload.VendorId.Data != ((void*)0))
   {
    if (payload->Payload.VendorId.Data->Size >= buf->Size)
    {
     if (Cmp(payload->Payload.VendorId.Data->Buf, buf->Buf, buf->Size) == 0)
     {
      ok = 1;
     }
    }
   }
  }
 }

 FreeBuf(buf);

 return ok;
}
