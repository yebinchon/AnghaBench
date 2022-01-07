
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int h ;
struct TYPE_16__ {int Size; } ;
struct TYPE_15__ {int PayloadList; TYPE_3__* Spi; int ProtocolId; int Number; } ;
struct TYPE_14__ {int SpiSize; int ProtocolId; int NumTransforms; int Number; } ;
typedef TYPE_1__ IKE_PROPOSAL_HEADER ;
typedef TYPE_2__ IKE_PACKET_PROPOSAL_PAYLOAD ;
typedef TYPE_3__ BUF ;


 int FreeBuf (TYPE_3__*) ;
 TYPE_3__* IkeBuildPayloadList (int ) ;
 int LIST_NUM (int ) ;
 TYPE_3__* NewBuf () ;
 int WriteBuf (TYPE_3__*,TYPE_1__*,int) ;
 int WriteBufBuf (TYPE_3__*,TYPE_3__*) ;
 int Zero (TYPE_1__*,int) ;

BUF *IkeBuildProposalPayload(IKE_PACKET_PROPOSAL_PAYLOAD *t)
{
 IKE_PROPOSAL_HEADER h;
 BUF *ret, *b;

 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 Zero(&h, sizeof(h));
 h.Number = t->Number;
 h.NumTransforms = LIST_NUM(t->PayloadList);
 h.ProtocolId = t->ProtocolId;
 h.SpiSize = t->Spi->Size;

 ret = NewBuf();
 WriteBuf(ret, &h, sizeof(h));
 WriteBufBuf(ret, t->Spi);

 b = IkeBuildPayloadList(t->PayloadList);
 WriteBufBuf(ret, b);

 FreeBuf(b);

 return ret;
}
