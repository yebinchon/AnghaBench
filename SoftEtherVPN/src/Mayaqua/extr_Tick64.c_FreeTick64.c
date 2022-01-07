
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {int Halt; int TickLock; int AdjustTime; int Thread; } ;
typedef TYPE_1__ ADJUST_TIME ;


 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int INFINITE ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int ReleaseEvent (int *) ;
 int ReleaseList (int ) ;
 int ReleaseThread (int ) ;
 int Set (int *) ;
 int WaitThread (int ,int ) ;
 int * halt_tick_event ;
 TYPE_1__* tk64 ;

void FreeTick64()
{
 UINT i;
 if (tk64 == ((void*)0))
 {

  return;
 }


 tk64->Halt = 1;
 Set(halt_tick_event);
 WaitThread(tk64->Thread, INFINITE);
 ReleaseThread(tk64->Thread);


 for (i = 0;i < LIST_NUM(tk64->AdjustTime);i++)
 {
  ADJUST_TIME *t = LIST_DATA(tk64->AdjustTime, i);
  Free(t);
 }
 ReleaseList(tk64->AdjustTime);
 DeleteLock(tk64->TickLock);
 Free(tk64);
 tk64 = ((void*)0);

 ReleaseEvent(halt_tick_event);
 halt_tick_event = ((void*)0);
}
