
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int h ;
struct TYPE_11__ {int SpiSize; int ProtocolId; int MessageType; int DoI; } ;
struct TYPE_10__ {TYPE_2__* MessageData; TYPE_1__* Spi; int ProtocolId; int MessageType; } ;
struct TYPE_9__ {int Size; TYPE_4__* Buf; } ;
struct TYPE_8__ {int Size; TYPE_4__* Buf; } ;
typedef TYPE_3__ IKE_PACKET_NOTICE_PAYLOAD ;
typedef TYPE_4__ IKE_NOTICE_HEADER ;
typedef int BUF ;


 int Endian16 (int ) ;
 int Endian32 (int ) ;
 int IKE_SA_DOI_IPSEC ;
 int * NewBuf () ;
 int WriteBuf (int *,TYPE_4__*,int) ;
 int Zero (TYPE_4__*,int) ;

BUF *IkeBuildNoticePayload(IKE_PACKET_NOTICE_PAYLOAD *t)
{
 IKE_NOTICE_HEADER h;
 BUF *ret;

 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 Zero(&h, sizeof(h));
 h.DoI = Endian32(IKE_SA_DOI_IPSEC);
 h.MessageType = Endian16(t->MessageType);
 h.ProtocolId = t->ProtocolId;
 h.SpiSize = t->Spi->Size;

 ret = NewBuf();
 WriteBuf(ret, &h, sizeof(h));
 WriteBuf(ret, t->Spi->Buf, t->Spi->Size);

 if (t->MessageData != ((void*)0))
 {
  WriteBuf(ret, t->MessageData->Buf, t->MessageData->Size);
 }

 return ret;
}
