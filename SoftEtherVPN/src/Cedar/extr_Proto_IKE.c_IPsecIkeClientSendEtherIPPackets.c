
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int Size; int Buf; } ;
struct TYPE_6__ {int SendPacketList; } ;
typedef int IKE_SERVER ;
typedef int IKE_CLIENT ;
typedef TYPE_1__ ETHERIP_SERVER ;
typedef TYPE_2__ BLOCK ;


 int DeleteAll (int ) ;
 int FreeBlock (TYPE_2__*) ;
 int IPSEC_IP_PROTO_ETHERIP ;
 int IPsecSendPacketByIkeClient (int *,int *,int ,int ,int ) ;
 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

void IPsecIkeClientSendEtherIPPackets(IKE_SERVER *ike, IKE_CLIENT *c, ETHERIP_SERVER *s)
{
 UINT i;

 if (ike == ((void*)0) || c == ((void*)0) || s == ((void*)0))
 {
  return;
 }

 for (i = 0;i < LIST_NUM(s->SendPacketList);i++)
 {
  BLOCK *b = LIST_DATA(s->SendPacketList, i);


  IPsecSendPacketByIkeClient(ike, c, b->Buf, b->Size, IPSEC_IP_PROTO_ETHERIP);

  FreeBlock(b);
 }

 DeleteAll(s->SendPacketList);
}
