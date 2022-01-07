
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int h ;
struct TYPE_7__ {int ProtocolId; int Port; int IdType; } ;
struct TYPE_6__ {int IdData; int ProtocolId; int Port; int Type; } ;
typedef TYPE_1__ IKE_PACKET_ID_PAYLOAD ;
typedef TYPE_2__ IKE_ID_HEADER ;
typedef int BUF ;


 int Endian16 (int ) ;
 int * NewBuf () ;
 int WriteBuf (int *,TYPE_2__*,int) ;
 int WriteBufBuf (int *,int ) ;
 int Zero (TYPE_2__*,int) ;

BUF *IkeBuildIdPayload(IKE_PACKET_ID_PAYLOAD *t)
{
 IKE_ID_HEADER h;
 BUF *ret;

 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 Zero(&h, sizeof(h));
 h.IdType = t->Type;
 h.Port = Endian16(t->Port);
 h.ProtocolId = t->ProtocolId;

 ret = NewBuf();
 WriteBuf(ret, &h, sizeof(h));

 WriteBufBuf(ret, t->IdData);

 return ret;
}
