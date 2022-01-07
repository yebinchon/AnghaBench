
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* UCHAR ;
struct TYPE_7__ {int IvRecv; int IvSend; void* KeyId; int SendControlPacketList; int AckReplyList; int Status; int Server; TYPE_1__* Session; } ;
struct TYPE_6__ {void* LastCreatedChannelIndex; int Server; } ;
typedef TYPE_1__ OPENVPN_SESSION ;
typedef TYPE_2__ OPENVPN_CHANNEL ;


 int NewIntList (int) ;
 int NewListFast (int *) ;
 int OPENVPN_CHANNEL_STATUS_INIT ;
 int Rand (int ,int) ;
 TYPE_2__* ZeroMalloc (int) ;

OPENVPN_CHANNEL *OvsNewChannel(OPENVPN_SESSION *se, UCHAR key_id)
{
 OPENVPN_CHANNEL *c;

 if (se == ((void*)0))
 {
  return ((void*)0);
 }

 c = ZeroMalloc(sizeof(OPENVPN_CHANNEL));

 c->Session = se;
 c->Server = se->Server;

 c->Status = OPENVPN_CHANNEL_STATUS_INIT;

 c->AckReplyList = NewIntList(1);

 c->SendControlPacketList = NewListFast(((void*)0));

 c->KeyId = key_id;

 Rand(c->IvSend, sizeof(c->IvSend));
 Rand(c->IvRecv, sizeof(c->IvRecv));



 se->LastCreatedChannelIndex = key_id;

 return c;
}
