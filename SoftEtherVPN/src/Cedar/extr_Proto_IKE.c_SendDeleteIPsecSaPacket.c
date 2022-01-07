
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IKE_SERVER ;
typedef int IKE_PACKET_PAYLOAD ;
typedef int IKE_CLIENT ;
typedef int BUF ;


 int IKE_PROTOCOL_ID_IPSEC_ESP ;
 int * IkeNewDeletePayload (int ,int ) ;
 int * NewBuf () ;
 int NewListSingle (int *) ;
 int SendInformationalExchangePacket (int *,int *,int *) ;
 int WriteBufInt (int *,int ) ;

void SendDeleteIPsecSaPacket(IKE_SERVER *ike, IKE_CLIENT *c, UINT spi)
{
 IKE_PACKET_PAYLOAD *payload;
 BUF *buf;

 if (ike == ((void*)0) || c == ((void*)0) || spi == 0)
 {
  return;
 }

 buf = NewBuf();
 WriteBufInt(buf, spi);

 payload = IkeNewDeletePayload(IKE_PROTOCOL_ID_IPSEC_ESP, NewListSingle(buf));

 SendInformationalExchangePacket(ike, c, payload);
}
