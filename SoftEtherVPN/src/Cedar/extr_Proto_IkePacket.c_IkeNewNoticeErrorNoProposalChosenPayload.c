
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT64 ;
struct TYPE_5__ {int Size; int Buf; } ;
typedef int IKE_PACKET_PAYLOAD ;
typedef TYPE_1__ BUF ;


 int FreeBuf (TYPE_1__*) ;
 int IKE_NOTICE_ERROR_NO_PROPOSAL_CHOSEN ;
 int IKE_PROTOCOL_ID_IKE ;
 int IKE_PROTOCOL_ID_IPSEC_ESP ;
 int * IkeNewNoticePayload (int ,int ,int ,int ,int *,int ) ;
 TYPE_1__* NewBuf () ;
 int WriteBufInt64 (TYPE_1__*,int ) ;

IKE_PACKET_PAYLOAD *IkeNewNoticeErrorNoProposalChosenPayload(bool quick_mode, UINT64 init_cookie, UINT64 resp_cookie)
{
 BUF *b = NewBuf();
 IKE_PACKET_PAYLOAD *ret;

 WriteBufInt64(b, init_cookie);
 WriteBufInt64(b, resp_cookie);

 ret = IkeNewNoticePayload((quick_mode ? IKE_PROTOCOL_ID_IPSEC_ESP : IKE_PROTOCOL_ID_IKE),
  IKE_NOTICE_ERROR_NO_PROPOSAL_CHOSEN, b->Buf, b->Size,
  ((void*)0), 0);

 FreeBuf(b);

 return ret;
}
