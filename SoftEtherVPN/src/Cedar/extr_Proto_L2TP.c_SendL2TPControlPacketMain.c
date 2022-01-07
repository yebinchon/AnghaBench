
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ SrcPort; scalar_t__ Data; } ;
typedef TYPE_2__ UDPPACKET ;
typedef int UCHAR ;
struct TYPE_12__ {TYPE_1__* Buf; } ;
struct TYPE_11__ {scalar_t__ LastNr; int ClientPort; int ClientIp; int ServerPort; int ServerIp; } ;
struct TYPE_9__ {int Size; int Buf; } ;
typedef TYPE_3__ L2TP_TUNNEL ;
typedef int L2TP_SERVER ;
typedef TYPE_4__ L2TP_QUEUE ;


 int Clone (int ,int ) ;
 scalar_t__ IPSEC_PORT_L2TPV3_VIRTUAL ;
 int L2TPSendUDP (int *,TYPE_2__*) ;
 TYPE_2__* NewUdpPacket (int *,int ,int *,int ,int ,int ) ;
 int WRITE_USHORT (int *,scalar_t__) ;

void SendL2TPControlPacketMain(L2TP_SERVER *l2tp, L2TP_TUNNEL *t, L2TP_QUEUE *q)
{
 UDPPACKET *p;

 if (l2tp == ((void*)0) || t == ((void*)0) || q == ((void*)0))
 {
  return;
 }

 p = NewUdpPacket(&t->ServerIp, t->ServerPort, &t->ClientIp, t->ClientPort,
  Clone(q->Buf->Buf, q->Buf->Size), q->Buf->Size);


 WRITE_USHORT(((UCHAR *)p->Data) + (p->SrcPort == IPSEC_PORT_L2TPV3_VIRTUAL ? 14 : 10), t->LastNr + 1);

 L2TPSendUDP(l2tp, p);
}
