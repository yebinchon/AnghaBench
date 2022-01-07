
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Lock; int Cedar; int * Listener; } ;
typedef TYPE_1__ DYNAMIC_LISTENER ;


 int DeleteLock (int ) ;
 int Free (TYPE_1__*) ;
 int Lock (int ) ;
 int ReleaseCedar (int ) ;
 int ReleaseListener (int *) ;
 int StopListener (int *) ;
 int Unlock (int ) ;

void FreeDynamicListener(DYNAMIC_LISTENER *d)
{

 if (d == ((void*)0))
 {
  return;
 }

 Lock(d->Lock);
 {
  if (d->Listener != ((void*)0))
  {
   StopListener(d->Listener);
   ReleaseListener(d->Listener);
   d->Listener = ((void*)0);
  }
 }
 Unlock(d->Lock);

 ReleaseCedar(d->Cedar);

 DeleteLock(d->Lock);

 Free(d);
}
