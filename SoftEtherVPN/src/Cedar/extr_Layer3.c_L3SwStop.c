
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Active; int Halt; int lock; int * Thread; } ;
typedef int THREAD ;
typedef TYPE_1__ L3SW ;


 int INFINITE ;
 int Lock (int ) ;
 int ReleaseThread (int *) ;
 int Unlock (int ) ;
 int WaitThread (int *,int ) ;

void L3SwStop(L3SW *s)
{
 THREAD *t = ((void*)0);

 if (s == ((void*)0))
 {
  return;
 }

 Lock(s->lock);
 {
  if (s->Active == 0)
  {
   Unlock(s->lock);
   return;
  }

  s->Halt = 1;

  t = s->Thread;

  s->Active = 0;
 }
 Unlock(s->lock);

 WaitThread(t, INFINITE);
 ReleaseThread(t);
}
