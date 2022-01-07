
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IKE_SERVER ;
typedef int IKE_PACKET_PAYLOAD ;
typedef int IKE_CLIENT ;


 int SendInformationalExchangePacketEx (int *,int *,int *,int,int ,int ) ;

void SendInformationalExchangePacket(IKE_SERVER *ike, IKE_CLIENT *c, IKE_PACKET_PAYLOAD *payload)
{
 SendInformationalExchangePacketEx(ike, c, payload, 0, 0, 0);
}
