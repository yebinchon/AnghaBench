
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_8__ {int Size; scalar_t__ Buf; } ;
struct TYPE_7__ {int PayloadList; } ;
struct TYPE_6__ {int Situation; int DoI; } ;
typedef TYPE_1__ IKE_SA_HEADER ;
typedef TYPE_2__ IKE_PACKET_SA_PAYLOAD ;
typedef TYPE_3__ BUF ;


 int Debug (char*,scalar_t__) ;
 scalar_t__ Endian32 (int ) ;
 int IKE_PAYLOAD_PROPOSAL ;
 scalar_t__ IKE_SA_DOI_IPSEC ;
 scalar_t__ IKE_SA_SITUATION_IDENTITY ;
 int IkeParsePayloadList (int *,int,int ) ;

bool IkeParseSaPayload(IKE_PACKET_SA_PAYLOAD *t, BUF *b)
{
 IKE_SA_HEADER *h;
 UCHAR *buf;
 UINT size;

 if (t == ((void*)0) || b == ((void*)0))
 {
  return 0;
 }

 if (b->Size < sizeof(IKE_SA_HEADER))
 {
  return 0;
 }

 h = (IKE_SA_HEADER *)b->Buf;
 buf = (UCHAR *)b->Buf;
 buf += sizeof(IKE_SA_HEADER);
 size = b->Size - sizeof(IKE_SA_HEADER);

 if (Endian32(h->DoI) != IKE_SA_DOI_IPSEC)
 {
  Debug("ISAKMP: Invalid DoI Value: 0x%x\n", Endian32(h->DoI));
  return 0;
 }

 if (Endian32(h->Situation) != IKE_SA_SITUATION_IDENTITY)
 {
  Debug("ISAKMP: Invalid Situation Value: 0x%x\n", Endian32(h->Situation));
  return 0;
 }

 t->PayloadList = IkeParsePayloadList(buf, size, IKE_PAYLOAD_PROPOSAL);

 return 1;
}
