
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int h ;
struct TYPE_7__ {int PayloadList; } ;
struct TYPE_6__ {void* Situation; void* DoI; } ;
typedef TYPE_1__ IKE_SA_HEADER ;
typedef TYPE_2__ IKE_PACKET_SA_PAYLOAD ;
typedef int BUF ;


 void* Endian32 (int ) ;
 int FreeBuf (int *) ;
 int IKE_SA_DOI_IPSEC ;
 int IKE_SA_SITUATION_IDENTITY ;
 int * IkeBuildPayloadList (int ) ;
 int * NewBuf () ;
 int WriteBuf (int *,TYPE_1__*,int) ;
 int WriteBufBuf (int *,int *) ;
 int Zero (TYPE_1__*,int) ;

BUF *IkeBuildSaPayload(IKE_PACKET_SA_PAYLOAD *t)
{
 IKE_SA_HEADER h;
 BUF *ret;
 BUF *b;

 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 Zero(&h, sizeof(h));
 h.DoI = Endian32(IKE_SA_DOI_IPSEC);
 h.Situation = Endian32(IKE_SA_SITUATION_IDENTITY);

 ret = NewBuf();

 WriteBuf(ret, &h, sizeof(h));

 b = IkeBuildPayloadList(t->PayloadList);
 WriteBufBuf(ret, b);

 FreeBuf(b);

 return ret;
}
