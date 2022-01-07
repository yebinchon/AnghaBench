
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int IKE_SERVER ;
typedef int IKE_PACKET_PAYLOAD ;
typedef int IKE_CLIENT ;
typedef int BUF ;


 int IKE_PROTOCOL_ID_IKE ;
 int * IkeNewDeletePayload (int ,int ) ;
 int * NewBuf () ;
 int NewListSingle (int *) ;
 int SendInformationalExchangePacket (int *,int *,int *) ;
 int WriteBufInt64 (int *,int ) ;

void SendDeleteIkeSaPacket(IKE_SERVER *ike, IKE_CLIENT *c, UINT64 init_cookie, UINT64 resp_cookie)
{
 IKE_PACKET_PAYLOAD *payload;
 BUF *buf;

 if (ike == ((void*)0) || c == ((void*)0))
 {
  return;
 }

 buf = NewBuf();
 WriteBufInt64(buf, init_cookie);
 WriteBufInt64(buf, resp_cookie);

 payload = IkeNewDeletePayload(IKE_PROTOCOL_ID_IKE, NewListSingle(buf));

 SendInformationalExchangePacket(ike, c, payload);
}
