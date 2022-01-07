
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UDPPACKET ;
struct TYPE_3__ {int Event; int SendPacketList; } ;
typedef TYPE_1__ UDPLISTENER ;
typedef int LIST ;


 int Add (int ,int *) ;
 int * LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int ) ;
 int SetSockEvent (int ) ;
 int UnlockList (int ) ;

void UdpListenerSendPackets(UDPLISTENER *u, LIST *packet_list)
{
 UINT num = 0;

 if (u == ((void*)0) || packet_list == ((void*)0))
 {
  return;
 }

 LockList(u->SendPacketList);
 {
  UINT i;

  num = LIST_NUM(packet_list);

  for (i = 0;i < LIST_NUM(packet_list);i++)
  {
   UDPPACKET *p = LIST_DATA(packet_list, i);

   Add(u->SendPacketList, p);
  }
 }
 UnlockList(u->SendPacketList);

 if (num >= 1)
 {
  SetSockEvent(u->Event);
 }
}
