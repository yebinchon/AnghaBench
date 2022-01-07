
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int ref; } ;
struct TYPE_8__ {scalar_t__ IndexInTubePair; int Lock; TYPE_1__* TubePairData; TYPE_3__* SockEvent; } ;
struct TYPE_7__ {int Lock; TYPE_3__* SockEvent2; TYPE_3__* SockEvent1; } ;
typedef TYPE_1__ TUBEPAIR_DATA ;
typedef TYPE_2__ TUBE ;
typedef TYPE_3__ SOCK_EVENT ;


 int AddRef (int ) ;
 int Lock (int ) ;
 int ReleaseSockEvent (TYPE_3__*) ;
 int Unlock (int ) ;

void SetTubeSockEvent(TUBE *t, SOCK_EVENT *e)
{

 if (t == ((void*)0))
 {
  return;
 }

 Lock(t->Lock);
 {
  TUBEPAIR_DATA *d;

  if (t->SockEvent != e)
  {
   if (t->SockEvent != ((void*)0))
   {
    ReleaseSockEvent(t->SockEvent);
   }

   if (e != ((void*)0))
   {
    AddRef(e->ref);
   }

   t->SockEvent = e;
  }

  d = t->TubePairData;

  if (d != ((void*)0))
  {
   Lock(d->Lock);
   {
    SOCK_EVENT **sep = (t->IndexInTubePair == 0 ? &d->SockEvent1 : &d->SockEvent2);

    if (*sep != e)
    {
     if (*sep != ((void*)0))
     {
      ReleaseSockEvent(*sep);
     }

     if (e != ((void*)0))
     {
      AddRef(e->ref);
     }

     *sep = e;
    }
   }
   Unlock(d->Lock);
  }
 }
 Unlock(t->Lock);
}
