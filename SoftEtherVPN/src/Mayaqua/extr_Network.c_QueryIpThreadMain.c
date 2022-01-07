
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_2__ {int Halt; int HaltEvent; int IntervalLastOk; int IntervalLastNg; int Lock; int Ip; int Hostname; } ;
typedef int THREAD ;
typedef TYPE_1__ QUERYIPTHREAD ;
typedef int IP ;


 int Copy (int *,int *,int) ;
 scalar_t__ GetIP4Ex (int *,int ,int,int*) ;
 int IsZeroIP (int *) ;
 int Lock (int ) ;
 int Unlock (int ) ;
 int Wait (int ,int ) ;

void QueryIpThreadMain(THREAD *thread, void *param)
{
 QUERYIPTHREAD *t = (QUERYIPTHREAD *)param;

 if (thread == ((void*)0) || param == ((void*)0))
 {
  return;
 }

 while (t->Halt == 0)
 {
  UINT next_wait_time = 0;
  IP ip;
  bool ok = 0;

  if (GetIP4Ex(&ip, t->Hostname, 5000, &t->Halt))
  {
   if (IsZeroIP(&ip) == 0)
   {
    Lock(t->Lock);
    {
     Copy(&t->Ip, &ip, sizeof(IP));
    }
    Unlock(t->Lock);

    ok = 1;
   }
  }

  if (ok == 0)
  {
   next_wait_time = t->IntervalLastNg;
  }
  else
  {
   next_wait_time = t->IntervalLastOk;
  }

  if (t->Halt)
  {
   break;
  }

  Wait(t->HaltEvent, next_wait_time);
 }
}
