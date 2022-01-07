
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ref; } ;
struct TYPE_5__ {int Lock; TYPE_2__* SockEvent; } ;
typedef TYPE_1__ TUBE ;
typedef TYPE_2__ SOCK_EVENT ;


 int AddRef (int ) ;
 int Lock (int ) ;
 int Unlock (int ) ;

SOCK_EVENT *GetTubeSockEvent(TUBE *t)
{
 SOCK_EVENT *e = ((void*)0);

 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 Lock(t->Lock);
 {
  if (t->SockEvent != ((void*)0))
  {
   AddRef(t->SockEvent->ref);

   e = t->SockEvent;
  }
 }
 Unlock(t->Lock);

 return e;
}
