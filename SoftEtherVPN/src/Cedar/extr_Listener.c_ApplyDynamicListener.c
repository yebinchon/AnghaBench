
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Lock; int * Listener; int Port; int Protocol; int Cedar; scalar_t__* EnablePtr; } ;
typedef TYPE_1__ DYNAMIC_LISTENER ;


 int Lock (int ) ;
 int * NewListener (int ,int ,int ) ;
 int ReleaseListener (int *) ;
 int StopListener (int *) ;
 int Unlock (int ) ;
 int WHERE ;

void ApplyDynamicListener(DYNAMIC_LISTENER *d)
{

 if (d == ((void*)0))
 {
  return;
 }

 Lock(d->Lock);
 {

  if (*d->EnablePtr)
  {
   if (d->Listener == ((void*)0))
   {

    WHERE;
    d->Listener = NewListener(d->Cedar, d->Protocol, d->Port);
   }
  }
  else
  {

   if (d->Listener != ((void*)0))
   {
    WHERE;
    StopListener(d->Listener);
    ReleaseListener(d->Listener);
    d->Listener = ((void*)0);
   }
  }
 }
 Unlock(d->Lock);
}
