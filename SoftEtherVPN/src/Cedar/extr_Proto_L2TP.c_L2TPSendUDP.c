
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UDPPACKET ;
struct TYPE_3__ {int SendPacketList; } ;
typedef TYPE_1__ L2TP_SERVER ;


 int Add (int ,int *) ;

void L2TPSendUDP(L2TP_SERVER *l2tp, UDPPACKET *p)
{

 if (l2tp == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Add(l2tp->SendPacketList, p);
}
