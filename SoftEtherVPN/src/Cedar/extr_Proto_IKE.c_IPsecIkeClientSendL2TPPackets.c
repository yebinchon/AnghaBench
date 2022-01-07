
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_10__ {scalar_t__ SrcPort; scalar_t__ Size; scalar_t__ Data; } ;
typedef TYPE_1__ UDPPACKET ;
typedef int UCHAR ;
struct TYPE_12__ {int L2TPClientPort; } ;
struct TYPE_11__ {int SendPacketList; } ;
typedef TYPE_2__ L2TP_SERVER ;
typedef int IKE_SERVER ;
typedef TYPE_3__ IKE_CLIENT ;


 int DeleteAll (int ) ;
 int FreeUdpPacket (TYPE_1__*) ;
 int IPSEC_IP_PROTO_L2TPV3 ;
 int IPSEC_PORT_L2TP ;
 scalar_t__ IPSEC_PORT_L2TPV3_VIRTUAL ;
 int IPsecIkeSendUdpForDebug (int ,int,int *,scalar_t__) ;
 int IPsecSendPacketByIkeClient (int *,TYPE_3__*,scalar_t__,scalar_t__,int ) ;
 int IPsecSendUdpPacket (int *,TYPE_3__*,int ,int ,scalar_t__,scalar_t__) ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

void IPsecIkeClientSendL2TPPackets(IKE_SERVER *ike, IKE_CLIENT *c, L2TP_SERVER *l2tp)
{
 UINT i;

 if (ike == ((void*)0) || c == ((void*)0) || l2tp == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(l2tp->SendPacketList);i++)
 {
  UDPPACKET *u = LIST_DATA(l2tp->SendPacketList, i);

  if (u->SrcPort != IPSEC_PORT_L2TPV3_VIRTUAL)
  {

   IPsecSendUdpPacket(ike, c, IPSEC_PORT_L2TP, c->L2TPClientPort,
    u->Data, u->Size);
  }
  else
  {

   IPsecSendPacketByIkeClient(ike, c, u->Data, u->Size, IPSEC_IP_PROTO_L2TPV3);




  }

  FreeUdpPacket(u);
 }

 DeleteAll(l2tp->SendPacketList);
}
