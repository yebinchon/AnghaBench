
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int Halt; int ThreadList; int TunnelList; int HaltCompletedEvent; int SockEvent; } ;
struct TYPE_6__ {int SessionList; } ;
typedef TYPE_1__ L2TP_TUNNEL ;
typedef int L2TP_SESSION ;
typedef TYPE_2__ L2TP_SERVER ;


 int Debug (char*) ;
 int INFINITE ;
 void* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int SetSockEvent (int ) ;
 int StopL2TPThread (TYPE_2__*,TYPE_1__*,int *) ;
 int StopThreadList (int ) ;
 int Wait (int ,int ) ;

void StopL2TPServer(L2TP_SERVER *l2tp, bool no_wait)
{

 if (l2tp == ((void*)0))
 {
  return;
 }
 if (l2tp->Halt)
 {
  return;
 }


 l2tp->Halt = 1;
 Debug("Shutting down L2TP Server...\n");


 SetSockEvent(l2tp->SockEvent);

 if (no_wait == 0)
 {

  Wait(l2tp->HaltCompletedEvent, INFINITE);
 }
 else
 {
  UINT i, j;

  for (i = 0;i < LIST_NUM(l2tp->TunnelList);i++)
  {
   L2TP_TUNNEL *t = LIST_DATA(l2tp->TunnelList, i);

   for (j = 0;j < LIST_NUM(t->SessionList);j++)
   {
    L2TP_SESSION *s = LIST_DATA(t->SessionList, j);

    StopL2TPThread(l2tp, t, s);
   }
  }
 }


 Debug("Stopping all L2TP PPP Threads...\n");
 StopThreadList(l2tp->ThreadList);
 Debug("L2TP Server Shutdown Completed.\n");
}
