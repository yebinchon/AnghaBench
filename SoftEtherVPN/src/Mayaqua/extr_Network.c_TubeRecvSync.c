
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_5__ {int Event; int Queue; } ;
typedef int TUBEDATA ;
typedef TYPE_1__ TUBE ;
typedef int SOCK_EVENT ;


 int * GetNext (int ) ;
 int * GetTubeSockEvent (TYPE_1__*) ;
 scalar_t__ INFINITE ;
 int IsTubeConnected (TYPE_1__*) ;
 int LockQueue (int ) ;
 int ReleaseSockEvent (int *) ;
 scalar_t__ Tick64 () ;
 int UnlockQueue (int ) ;
 int Wait (int ,scalar_t__) ;
 int WaitSockEvent (int *,scalar_t__) ;

TUBEDATA *TubeRecvSync(TUBE *t, UINT timeout)
{
 UINT64 start_tick, timeout_tick;
 TUBEDATA *d = ((void*)0);

 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 if (IsTubeConnected(t) == 0)
 {
  return ((void*)0);
 }

 start_tick = Tick64();
 timeout_tick = start_tick + (UINT64)timeout;

 while (1)
 {
  UINT64 now = Tick64();
  UINT remain_time;
  SOCK_EVENT *e;
  UINT interval;

  d = ((void*)0);

  if (IsTubeConnected(t) == 0)
  {
   break;
  }

  LockQueue(t->Queue);
  {
   d = GetNext(t->Queue);
  }
  UnlockQueue(t->Queue);

  if (d != ((void*)0))
  {
   break;
  }

  if (timeout != INFINITE && now >= timeout_tick)
  {
   return ((void*)0);
  }

  remain_time = (UINT)(timeout_tick - now);

  e = GetTubeSockEvent(t);

  interval = (timeout == INFINITE ? INFINITE : remain_time);

  if (e == ((void*)0))
  {
   Wait(t->Event, interval);
  }
  else
  {
   WaitSockEvent(e, interval);

   ReleaseSockEvent(e);
  }
 }

 return d;
}
