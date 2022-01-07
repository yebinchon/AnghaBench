
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int h ;
typedef int UINT ;
struct TYPE_13__ {int Size; TYPE_2__* Buf; } ;
struct TYPE_12__ {int SpiSize; int ProtocolId; int NumSpis; int DoI; } ;
struct TYPE_11__ {int SpiList; int ProtocolId; } ;
typedef TYPE_1__ IKE_PACKET_DELETE_PAYLOAD ;
typedef TYPE_2__ IKE_DELETE_HEADER ;
typedef TYPE_3__ BUF ;


 int Endian16 (int) ;
 int Endian32 (int ) ;
 int IKE_SA_DOI_IPSEC ;
 TYPE_3__* LIST_DATA (int ,int) ;
 int LIST_NUM (int ) ;
 TYPE_3__* NewBuf () ;
 int WriteBuf (TYPE_3__*,TYPE_2__*,int) ;
 int Zero (TYPE_2__*,int) ;

BUF *IkeBuildDeletePayload(IKE_PACKET_DELETE_PAYLOAD *t)
{
 IKE_DELETE_HEADER h;
 BUF *ret;
 UINT i;

 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 Zero(&h, sizeof(h));
 h.DoI = Endian32(IKE_SA_DOI_IPSEC);
 h.NumSpis = Endian16(LIST_NUM(t->SpiList));
 h.ProtocolId = t->ProtocolId;

 if (LIST_NUM(t->SpiList) >= 1)
 {
  BUF *b = LIST_DATA(t->SpiList, 0);

  h.SpiSize = b->Size;
 }

 ret = NewBuf();
 WriteBuf(ret, &h, sizeof(h));

 for (i = 0;i < LIST_NUM(t->SpiList);i++)
 {
  BUF *b = LIST_DATA(t->SpiList, i);

  WriteBuf(ret, b->Buf, b->Size);
 }

 return ret;
}
