
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Active; int Halt; int lock; int Thread; int IfList; } ;
typedef TYPE_1__ L3SW ;


 int L3SwThread ;
 int LIST_NUM (int ) ;
 int Lock (int ) ;
 int NewThread (int ,TYPE_1__*) ;
 int Unlock (int ) ;
 int WaitThreadInit (int ) ;

void L3SwStart(L3SW *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 Lock(s->lock);
 {
  if (s->Active == 0)
  {

   if (LIST_NUM(s->IfList) >= 1)
   {
    s->Halt = 0;


    s->Thread = NewThread(L3SwThread, s);
    WaitThreadInit(s->Thread);
   }
  }
 }
 Unlock(s->lock);
}
