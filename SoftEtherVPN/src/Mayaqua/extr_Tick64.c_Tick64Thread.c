
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {scalar_t__ LastTick; scalar_t__ TickStart; scalar_t__ Tick; scalar_t__ Tick64WithTime64; scalar_t__ Time64; scalar_t__ Halt; int AdjustTime; int TickLock; scalar_t__ RoundCount; } ;
struct TYPE_8__ {scalar_t__ Time; scalar_t__ Tick; } ;
typedef int THREAD ;
typedef TYPE_1__ ADJUST_TIME ;


 int Add (int ,TYPE_1__*) ;
 int Debug (char*,scalar_t__,...) ;
 int Delete (int ,TYPE_1__*) ;
 scalar_t__ Diff64 (scalar_t__,scalar_t__) ;
 int Free (TYPE_1__*) ;
 TYPE_1__* LIST_DATA (int ,int) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 scalar_t__ MAX_ADJUST_TIME ;
 int MsSetThreadPriorityRealtime () ;
 int NoticeThreadInit (int *) ;
 int SleepThread (scalar_t__) ;
 void* SystemTime64 () ;
 scalar_t__ TICK64_SPAN ;
 scalar_t__ TICK64_SPAN_WIN32 ;
 scalar_t__ TickRealtime () ;
 int UnixSetThreadPriorityRealtime () ;
 int Unlock (int ) ;
 int UnlockList (int ) ;
 int Wait (int ,scalar_t__) ;
 scalar_t__ Win32FastTick64 () ;
 TYPE_1__* ZeroMalloc (int) ;
 int halt_tick_event ;
 TYPE_2__* tk64 ;

void Tick64Thread(THREAD *thread, void *param)
{
 UINT n = 0;
 bool first = 0;
 bool create_first_entry = 1;
 UINT tick_span;

 if (thread == ((void*)0))
 {
  return;
 }
 UnixSetThreadPriorityRealtime();

 tick_span = TICK64_SPAN;



 while (1)
 {
  UINT tick;
  UINT64 tick64;


  tick = TickRealtime();

  if (tk64->LastTick > tick)
  {
   if ((tk64->LastTick - tick) >= (UINT64)0x0fffffff)
   {

    tk64->RoundCount++;
   }
   else
   {


    tick = tk64->LastTick;
   }
  }
  tk64->LastTick = tick;

  tick64 = (UINT64)tk64->RoundCount * (UINT64)4294967296LL + (UINT64)tick;

  Lock(tk64->TickLock);
  {
   if (tk64->TickStart == 0)
   {
    tk64->TickStart = tick64;
   }
   tick64 = tk64->Tick = tick64 - tk64->TickStart + (UINT64)1;
  }
  Unlock(tk64->TickLock);





  if (create_first_entry)
  {
   ADJUST_TIME *t = ZeroMalloc(sizeof(ADJUST_TIME));
   t->Tick = tick64;
   t->Time = SystemTime64();
   tk64->Tick64WithTime64 = tick64;
   tk64->Time64 = t->Time;
   Add(tk64->AdjustTime, t);


   NoticeThreadInit(thread);
   create_first_entry = 0;
  }


  n += tick_span;
  if (n >= 1000 || first == 0)
  {
   UINT64 now = SystemTime64();

   if (now < tk64->Time64 ||
    Diff64((now - tk64->Time64) + tk64->Tick64WithTime64, tick64) >= tick_span)
   {
    ADJUST_TIME *t = ZeroMalloc(sizeof(ADJUST_TIME));
    LockList(tk64->AdjustTime);
    {
     t->Tick = tick64;
     t->Time = now;
     Add(tk64->AdjustTime, t);
     Debug("Adjust Time: Tick = %I64u, Time = %I64u\n",
      t->Tick, t->Time);


     if (LIST_NUM(tk64->AdjustTime) > MAX_ADJUST_TIME)
     {

      ADJUST_TIME *t2 = LIST_DATA(tk64->AdjustTime, 1);

      Delete(tk64->AdjustTime, t2);

      Debug("NUM_ADJUST TIME: %u\n", LIST_NUM(tk64->AdjustTime));

      Free(t2);
     }
    }
    UnlockList(tk64->AdjustTime);
    tk64->Time64 = now;
    tk64->Tick64WithTime64 = tick64;
   }
   first = 1;
   n = 0;
  }

  if (tk64->Halt)
  {
   break;
  }




  SleepThread(tick_span);

 }
}
