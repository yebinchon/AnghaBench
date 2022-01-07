
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int h ;
typedef scalar_t__ USHORT ;
typedef int UINT ;
struct TYPE_16__ {int Size; TYPE_2__* Buf; } ;
struct TYPE_15__ {int PayloadSize; int NextPayload; } ;
struct TYPE_14__ {int PayloadType; } ;
typedef int LIST ;
typedef TYPE_1__ IKE_PACKET_PAYLOAD ;
typedef TYPE_2__ IKE_COMMON_HEADER ;
typedef TYPE_3__ BUF ;


 int Endian16 (scalar_t__) ;
 int FreeBuf (TYPE_3__*) ;
 int IKE_PAYLOAD_NONE ;
 TYPE_3__* IkeBuildPayload (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int *,int) ;
 int LIST_NUM (int *) ;
 TYPE_3__* NewBuf () ;
 int SeekBuf (TYPE_3__*,int ,int ) ;
 int WriteBuf (TYPE_3__*,TYPE_2__*,int) ;
 int Zero (TYPE_2__*,int) ;

BUF *IkeBuildPayloadList(LIST *o)
{
 BUF *b;
 UINT i;

 if (o == ((void*)0))
 {
  return ((void*)0);
 }

 b = NewBuf();

 for (i = 0;i < LIST_NUM(o);i++)
 {
  IKE_PACKET_PAYLOAD *p = LIST_DATA(o, i);
  IKE_PACKET_PAYLOAD *next = ((void*)0);
  IKE_COMMON_HEADER h;
  BUF *tmp;

  if (i < (LIST_NUM(o) - 1))
  {
   next = LIST_DATA(o, i + 1);
  }

  Zero(&h, sizeof(h));
  if (next != ((void*)0))
  {
   h.NextPayload = next->PayloadType;
  }
  else
  {
   h.NextPayload = IKE_PAYLOAD_NONE;
  }

  tmp = IkeBuildPayload(p);
  if (tmp != ((void*)0))
  {
   h.PayloadSize = Endian16(tmp->Size + (USHORT)sizeof(h));

   WriteBuf(b, &h, sizeof(h));
   WriteBuf(b, tmp->Buf, tmp->Size);

   FreeBuf(tmp);
  }
 }

 SeekBuf(b, 0, 0);

 return b;
}
