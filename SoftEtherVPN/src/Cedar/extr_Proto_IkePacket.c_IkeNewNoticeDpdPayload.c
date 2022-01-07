
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT64 ;
typedef int UINT ;
struct TYPE_5__ {int Size; int Buf; } ;
typedef int IKE_PACKET_PAYLOAD ;
typedef TYPE_1__ BUF ;


 int Endian32 (int ) ;
 int FreeBuf (TYPE_1__*) ;
 int IKE_NOTICE_DPD_REQUEST ;
 int IKE_NOTICE_DPD_RESPONSE ;
 int IKE_PROTOCOL_ID_IKE ;
 int * IkeNewNoticePayload (int ,int ,int ,int ,int *,int) ;
 TYPE_1__* NewBuf () ;
 int WriteBufInt64 (TYPE_1__*,int ) ;

IKE_PACKET_PAYLOAD *IkeNewNoticeDpdPayload(bool ack, UINT64 init_cookie, UINT64 resp_cookie, UINT seq_no)
{
 IKE_PACKET_PAYLOAD *ret;
 BUF *b = NewBuf();

 seq_no = Endian32(seq_no);

 WriteBufInt64(b, init_cookie);
 WriteBufInt64(b, resp_cookie);

 ret = IkeNewNoticePayload(IKE_PROTOCOL_ID_IKE, (ack ? IKE_NOTICE_DPD_RESPONSE : IKE_NOTICE_DPD_REQUEST),
  b->Buf, b->Size,
  &seq_no, sizeof(UINT));

 FreeBuf(b);

 return ret;
}
