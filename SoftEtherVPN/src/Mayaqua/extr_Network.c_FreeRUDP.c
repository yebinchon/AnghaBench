
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UDPPACKET ;
struct TYPE_5__ {int Halt; int NoNatTRegister; size_t RandPortId; int Lock; int * TargetConnectedSock; int NewSockConnectEvent; int TargetConnectedEvent; int HaltEvent; int SockEvent; int * UdpSock; int Interrupt; int SendPacketList; int NewSockQueue; int NatT_SourceIpList; int SessionList; int * Thread; int * IpQueryThread; scalar_t__ ServerMode; } ;
typedef int SOCK ;
typedef TYPE_1__ RUDP_STACK ;
typedef TYPE_1__ RUDP_SOURCE_IP ;
typedef int RUDP_SESSION ;


 int DeleteLock (int ) ;
 int Disconnect (int *) ;
 int Free (TYPE_1__*) ;
 int FreeInterruptManager (int ) ;
 int FreeUdpPacket (int *) ;
 int * GetNext (int ) ;
 int INFINITE ;
 void* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int RUDPFreeSession (int *) ;
 int ReleaseEvent (int ) ;
 int ReleaseList (int ) ;
 int ReleaseQueue (int ) ;
 int ReleaseSock (int *) ;
 int ReleaseSockEvent (int ) ;
 int ReleaseThread (int *) ;
 int Set (int ) ;
 int SetSockEvent (int ) ;
 int WaitThread (int *,int ) ;
 scalar_t__* rand_port_numbers ;

void FreeRUDP(RUDP_STACK *r)
{
 UINT i;

 if (r == ((void*)0))
 {
  return;
 }

 r->Halt = 1;
 Set(r->HaltEvent);
 SetSockEvent(r->SockEvent);

 if (r->ServerMode && r->NoNatTRegister == 0)
 {
  if (r->IpQueryThread != ((void*)0))
  {
   WaitThread(r->IpQueryThread, INFINITE);
   ReleaseThread(r->IpQueryThread);
  }
 }

 WaitThread(r->Thread, INFINITE);
 ReleaseThread(r->Thread);

 for (i = 0;i < LIST_NUM(r->SessionList);i++)
 {
  RUDP_SESSION *se = LIST_DATA(r->SessionList, i);

  RUDPFreeSession(se);
 }

 ReleaseList(r->SessionList);

 for (i = 0;i < LIST_NUM(r->SendPacketList);i++)
 {
  UDPPACKET *p = LIST_DATA(r->SendPacketList, i);

  FreeUdpPacket(p);
 }

 while (1)
 {
  SOCK *s = GetNext(r->NewSockQueue);
  if (s == ((void*)0))
  {
   break;
  }

  Disconnect(s);
  ReleaseSock(s);
 }

 for (i = 0;i < LIST_NUM(r->NatT_SourceIpList);i++)
 {
  RUDP_SOURCE_IP *sip = (RUDP_SOURCE_IP *)LIST_DATA(r->NatT_SourceIpList, i);

  Free(sip);
 }

 ReleaseList(r->NatT_SourceIpList);

 ReleaseQueue(r->NewSockQueue);

 ReleaseList(r->SendPacketList);

 FreeInterruptManager(r->Interrupt);

 Disconnect(r->UdpSock);
 ReleaseSock(r->UdpSock);
 ReleaseSockEvent(r->SockEvent);
 ReleaseEvent(r->HaltEvent);
 ReleaseEvent(r->TargetConnectedEvent);

 ReleaseEvent(r->NewSockConnectEvent);

 Disconnect(r->TargetConnectedSock);
 ReleaseSock(r->TargetConnectedSock);

 DeleteLock(r->Lock);

 if (r->RandPortId != 0)
 {
  rand_port_numbers[r->RandPortId] = 0;
 }

 Free(r);
}
