
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int ServerAddress; } ;
struct TYPE_6__ {int Halt; int Cedar; int Sock2; int Sock1; int Cancel; int * Ipc; int Eth; int MainThread; TYPE_3__ CurrentDhcpOptionList; } ;
typedef TYPE_1__ NATIVE_STACK ;
typedef int IP ;


 int Cancel (int ) ;
 int CloseEth (int ) ;
 int Disconnect (int ) ;
 int Free (TYPE_1__*) ;
 int FreeIPC (int *) ;
 int INFINITE ;
 int IPCDhcpFreeIP (int *,int *) ;
 int IsZero (TYPE_3__*,int) ;
 int NsStopIpTablesTracking (TYPE_1__*) ;
 int ReleaseCancel (int ) ;
 int ReleaseCedar (int ) ;
 int ReleaseSock (int ) ;
 int ReleaseThread (int ) ;
 int SleepThread (int) ;
 int UINTToIP (int *,int ) ;
 int WaitThread (int ,int ) ;

void FreeNativeStack(NATIVE_STACK *a)
{

 if (a == ((void*)0))
 {
  return;
 }

 if (a->Ipc != ((void*)0) && IsZero(&a->CurrentDhcpOptionList, sizeof(a->CurrentDhcpOptionList)) == 0)
 {
  IP dhcp_server;

  UINTToIP(&dhcp_server, a->CurrentDhcpOptionList.ServerAddress);

  IPCDhcpFreeIP(a->Ipc, &dhcp_server);
  SleepThread(200);
 }

 a->Halt = 1;
 Cancel(a->Cancel);
 Disconnect(a->Sock1);
 Disconnect(a->Sock2);

 WaitThread(a->MainThread, INFINITE);

 ReleaseThread(a->MainThread);

 CloseEth(a->Eth);
 FreeIPC(a->Ipc);

 NsStopIpTablesTracking(a);

 ReleaseCancel(a->Cancel);

 ReleaseSock(a->Sock1);
 ReleaseSock(a->Sock2);

 ReleaseCedar(a->Cedar);

 Free(a);
}
