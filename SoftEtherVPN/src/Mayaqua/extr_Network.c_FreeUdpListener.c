
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef int UDPPACKET ;
struct TYPE_4__ {int Halt; int Interrupts; int SendPacketList; int PortList; int Event; int Thread; } ;
typedef TYPE_1__ UDPLISTENER ;


 int Free (TYPE_1__*) ;
 int FreeInterruptManager (int ) ;
 int FreeUdpPacket (int *) ;
 int INFINITE ;
 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseIntList (int ) ;
 int ReleaseList (int ) ;
 int ReleaseSockEvent (int ) ;
 int ReleaseThread (int ) ;
 int SetSockEvent (int ) ;
 int WaitThread (int ,int ) ;

void FreeUdpListener(UDPLISTENER *u)
{
 UINT i;

 if (u == ((void*)0))
 {
  return;
 }

 u->Halt = 1;
 SetSockEvent(u->Event);

 WaitThread(u->Thread, INFINITE);
 ReleaseThread(u->Thread);
 ReleaseSockEvent(u->Event);

 ReleaseIntList(u->PortList);

 for (i = 0;i < LIST_NUM(u->SendPacketList);i++)
 {
  UDPPACKET *p = LIST_DATA(u->SendPacketList, i);

  FreeUdpPacket(p);
 }

 ReleaseList(u->SendPacketList);

 FreeInterruptManager(u->Interrupts);

 Free(u);
}
