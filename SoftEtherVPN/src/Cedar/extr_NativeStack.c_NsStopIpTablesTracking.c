
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int IpTablesHalt; int IpTablesInitOk; int * IpTablesHaltEvent; int * IpTablesThread; } ;
typedef TYPE_1__ NATIVE_STACK ;


 int INFINITE ;
 int ReleaseEvent (int *) ;
 int ReleaseThread (int *) ;
 int Set (int *) ;
 int WaitThread (int *,int ) ;

void NsStopIpTablesTracking(NATIVE_STACK *a)
{
 if (a->IpTablesThread == ((void*)0))
 {
  return;
 }

 a->IpTablesHalt = 1;
 Set(a->IpTablesHaltEvent);

 WaitThread(a->IpTablesThread, INFINITE);

 ReleaseThread(a->IpTablesThread);
 ReleaseEvent(a->IpTablesHaltEvent);

 a->IpTablesThread = ((void*)0);
 a->IpTablesHaltEvent = ((void*)0);
 a->IpTablesInitOk = 0;
 a->IpTablesHalt = 0;
}
