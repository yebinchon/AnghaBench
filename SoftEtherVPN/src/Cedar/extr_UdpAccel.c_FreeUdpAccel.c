
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int NatT_Halt; TYPE_2__* Cedar; int NatT_Lock; int NatT_HaltEvent; int * NatT_GetIpThread; int MyPort; scalar_t__ IsInCedarPortList; int UdpSock; int RecvBlockQueue; } ;
typedef TYPE_1__ UDP_ACCEL ;
struct TYPE_6__ {int UdpPortList; } ;
typedef int BLOCK ;


 int DelInt (int ,int ) ;
 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int FreeBlock (int *) ;
 int * GetNext (int ) ;
 int INFINITE ;
 int LockList (int ) ;
 int ReleaseCedar (TYPE_2__*) ;
 int ReleaseEvent (int ) ;
 int ReleaseQueue (int ) ;
 int ReleaseSock (int ) ;
 int ReleaseThread (int *) ;
 int Set (int ) ;
 int UnlockList (int ) ;
 int WaitThread (int *,int ) ;

void FreeUdpAccel(UDP_ACCEL *a)
{

 if (a == ((void*)0))
 {
  return;
 }

 while (1)
 {
  BLOCK *b = GetNext(a->RecvBlockQueue);

  if (b == ((void*)0))
  {
   break;
  }

  FreeBlock(b);
 }

 ReleaseQueue(a->RecvBlockQueue);

 ReleaseSock(a->UdpSock);

 if (a->IsInCedarPortList)
 {
  LockList(a->Cedar->UdpPortList);
  {
   DelInt(a->Cedar->UdpPortList, a->MyPort);
  }
  UnlockList(a->Cedar->UdpPortList);
 }


 a->NatT_Halt = 1;
 Set(a->NatT_HaltEvent);

 if (a->NatT_GetIpThread != ((void*)0))
 {
  WaitThread(a->NatT_GetIpThread, INFINITE);
  ReleaseThread(a->NatT_GetIpThread);
 }

 ReleaseEvent(a->NatT_HaltEvent);
 DeleteLock(a->NatT_Lock);

 ReleaseCedar(a->Cedar);

 Free(a);
}
