
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Thread; int AdjustTime; int TickLock; } ;
typedef int TICK64 ;


 int NewEvent () ;
 int NewList (int *) ;
 int NewLock () ;
 int NewThread (int ,int *) ;
 int Tick64Thread ;
 int WaitThreadInit (int ) ;
 TYPE_1__* ZeroMalloc (int) ;
 int halt_tick_event ;
 TYPE_1__* tk64 ;

void InitTick64()
{
 if (tk64 != ((void*)0))
 {

  return;
 }

 halt_tick_event = NewEvent();


 tk64 = ZeroMalloc(sizeof(TICK64));
 tk64->TickLock = NewLock();
 tk64->AdjustTime = NewList(((void*)0));


 tk64->Thread = NewThread(Tick64Thread, ((void*)0));
 WaitThreadInit(tk64->Thread);
}
