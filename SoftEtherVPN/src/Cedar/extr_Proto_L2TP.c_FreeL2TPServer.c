
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UDPPACKET ;
struct TYPE_4__ {int FlushList; int Cedar; int HaltCompletedEvent; int SockEvent; int TunnelList; int SendPacketList; int ThreadList; } ;
typedef int L2TP_TUNNEL ;
typedef TYPE_1__ L2TP_SERVER ;


 int Free (TYPE_1__*) ;
 int FreeL2TPTunnel (int *) ;
 int FreeThreadList (int ) ;
 int FreeTubeFlushList (int ) ;
 int FreeUdpPacket (int *) ;
 void* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseCedar (int ) ;
 int ReleaseEvent (int ) ;
 int ReleaseList (int ) ;
 int ReleaseSockEvent (int ) ;

void FreeL2TPServer(L2TP_SERVER *l2tp)
{
 UINT i;

 if (l2tp == ((void*)0))
 {
  return;
 }

 FreeThreadList(l2tp->ThreadList);

 for (i = 0;i < LIST_NUM(l2tp->SendPacketList);i++)
 {
  UDPPACKET *p = LIST_DATA(l2tp->SendPacketList, i);

  FreeUdpPacket(p);
 }

 ReleaseList(l2tp->SendPacketList);

 for (i = 0;i < LIST_NUM(l2tp->TunnelList);i++)
 {
  L2TP_TUNNEL *t = LIST_DATA(l2tp->TunnelList, i);

  FreeL2TPTunnel(t);
 }

 ReleaseList(l2tp->TunnelList);

 ReleaseSockEvent(l2tp->SockEvent);

 ReleaseEvent(l2tp->HaltCompletedEvent);

 ReleaseCedar(l2tp->Cedar);

 FreeTubeFlushList(l2tp->FlushList);

 Free(l2tp);
}
