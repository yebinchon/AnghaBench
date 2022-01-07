
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
struct TYPE_7__ {int PayloadList; int Spi; int ProtocolId; int Number; } ;
struct TYPE_6__ {scalar_t__ SpiSize; int ProtocolId; int Number; } ;
typedef TYPE_1__ IKE_PROPOSAL_HEADER ;
typedef TYPE_2__ IKE_PACKET_PROPOSAL_PAYLOAD ;
typedef TYPE_3__ BUF ;


 int IKE_PAYLOAD_TRANSFORM ;
 int IkeParsePayloadList (int *,int,int ) ;
 int MemToBuf (int *,scalar_t__) ;

bool IkeParseProposalPayload(IKE_PACKET_PROPOSAL_PAYLOAD *t, BUF *b)
{
 IKE_PROPOSAL_HEADER *h;
 UCHAR *buf;
 UINT size;

 if (t == ((void*)0) || b == ((void*)0))
 {
  return 0;
 }

 if (b->Size < sizeof(IKE_PROPOSAL_HEADER))
 {
  return 0;
 }

 h = (IKE_PROPOSAL_HEADER *)b->Buf;

 t->Number = h->Number;
 t->ProtocolId = h->ProtocolId;

 buf = (UCHAR *)b->Buf;
 buf += sizeof(IKE_PROPOSAL_HEADER);
 size = b->Size - sizeof(IKE_PROPOSAL_HEADER);

 if (size < (UINT)h->SpiSize)
 {
  return 0;
 }

 t->Spi = MemToBuf(buf, h->SpiSize);

 buf += h->SpiSize;
 size -= h->SpiSize;

 t->PayloadList = IkeParsePayloadList(buf, size, IKE_PAYLOAD_TRANSFORM);

 return 1;
}
