
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_8__ {int Halt; int ShadowIPv6; scalar_t__ Protocol; int Cedar; struct TYPE_8__* ShadowListener; int Thread; int Event; int Port; int lock; TYPE_1__* Sock; } ;
struct TYPE_7__ {int ref; } ;
typedef TYPE_1__ SOCK ;
typedef TYPE_2__ LISTENER ;


 int AddRef (int ) ;
 int Disconnect (TYPE_1__*) ;
 int INFINITE ;
 scalar_t__ LISTENER_TCP ;
 int Lock (int ) ;
 int ReleaseListener (TYPE_2__*) ;
 int ReleaseSock (TYPE_1__*) ;
 int SLog (int ,char*,int ) ;
 int Set (int ) ;
 int Unlock (int ) ;
 int WaitThread (int ,int ) ;

void StopListener(LISTENER *r)
{
 UINT port;
 SOCK *s = ((void*)0);

 if (r == ((void*)0))
 {
  return;
 }

 Lock(r->lock);
 if (r->Halt)
 {
  Unlock(r->lock);
  return;
 }


 r->Halt = 1;

 if (r->Sock != ((void*)0))
 {
  s = r->Sock;

  AddRef(s->ref);
 }

 Unlock(r->lock);

 port = r->Port;

 if (r->ShadowIPv6 == 0 && r->Protocol == LISTENER_TCP)
 {
  SLog(r->Cedar, "LS_LISTENER_STOP_1", port);
 }


 if (s != ((void*)0))
 {
  Disconnect(s);
  ReleaseSock(s);
  s = ((void*)0);
 }


 Set(r->Event);


 WaitThread(r->Thread, INFINITE);


 if (r->ShadowIPv6 == 0)
 {
  if (r->ShadowListener != ((void*)0))
  {
   StopListener(r->ShadowListener);

   ReleaseListener(r->ShadowListener);

   r->ShadowListener = ((void*)0);
  }
 }

 if (r->ShadowIPv6 == 0 && r->Protocol == LISTENER_TCP)
 {
  SLog(r->Cedar, "LS_LISTENER_STOP_2", port);
 }
}
