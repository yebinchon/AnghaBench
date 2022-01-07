
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int Size; int Buf; } ;
struct TYPE_6__ {int PayloadList; } ;
typedef int IKE_PACKET_PAYLOAD ;
typedef TYPE_1__ IKE_PACKET ;
typedef TYPE_2__ BUF ;


 int Add (int ,int *) ;
 int FreeBuf (TYPE_2__*) ;
 int IKE_PAYLOAD_VENDOR_ID ;
 int * IkeNewDataPayload (int ,int ,int ) ;
 TYPE_2__* IkeStrToVendorId (char*) ;

void IkeAddVendorId(IKE_PACKET *p, char *str)
{
 BUF *buf;
 IKE_PACKET_PAYLOAD *payload;

 if (p == ((void*)0) || str == ((void*)0))
 {
  return;
 }

 buf = IkeStrToVendorId(str);
 if (buf == ((void*)0))
 {
  return;
 }

 payload = IkeNewDataPayload(IKE_PAYLOAD_VENDOR_ID, buf->Buf, buf->Size);

 Add(p->PayloadList, payload);

 FreeBuf(buf);
}
