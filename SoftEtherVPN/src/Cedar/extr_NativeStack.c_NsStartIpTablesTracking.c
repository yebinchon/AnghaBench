
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int IpTablesInitOk; int IpTablesHalt; int * IpTablesThread; int IpTablesHaltEvent; } ;
typedef TYPE_1__ NATIVE_STACK ;


 int NewEvent () ;
 int * NewThread (int ,TYPE_1__*) ;
 int NsIpTablesThread ;
 int WaitThreadInit (int *) ;

bool NsStartIpTablesTracking(NATIVE_STACK *a)
{
 if (a->IpTablesThread != ((void*)0))
 {
  return 1;
 }

 a->IpTablesInitOk = 0;

 a->IpTablesHalt = 0;

 a->IpTablesHaltEvent = NewEvent();

 a->IpTablesThread = NewThread(NsIpTablesThread, a);

 WaitThreadInit(a->IpTablesThread);

 return a->IpTablesInitOk;
}
