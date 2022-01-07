
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int X ;
typedef scalar_t__ UINT64 ;
struct TYPE_17__ {int Expired; int Ok; int * ServerX; scalar_t__ UserSelected; TYPE_3__* Connection; int * CheckCertProc; } ;
struct TYPE_16__ {int * CheckCertProc; } ;
struct TYPE_15__ {TYPE_11__* Session; TYPE_1__* FirstSock; int * ServerX; scalar_t__ UseTicket; int * Cedar; } ;
struct TYPE_14__ {int CheckServerCert; int lock; int * ServerCert; } ;
struct TYPE_13__ {int * RemoteX; } ;
struct TYPE_12__ {int LinkModeClient; TYPE_2__* Link; TYPE_4__* ClientAuth; } ;
typedef int THREAD ;
typedef TYPE_3__ CONNECTION ;
typedef TYPE_4__ CLIENT_AUTH ;
typedef TYPE_5__ CHECK_CERT_THREAD_PROC ;
typedef int CEDAR ;


 scalar_t__ CONNECTING_POOLING_SPAN ;
 scalar_t__ CheckSignatureByCa (int *,int *) ;
 scalar_t__ CheckSignatureByCaLinkMode (TYPE_11__*,int *) ;
 scalar_t__ CheckXDateNow (int *) ;
 int ClientCheckServerCertThread ;
 int ClientUploadNoop (TYPE_3__*) ;
 int * CloneX (int *) ;
 int CompareX (int *,int *) ;
 int Free (TYPE_5__*) ;
 int FreeX (int *) ;
 int Lock (int ) ;
 int * NewThread (int ,TYPE_5__*) ;
 int ReleaseThread (int *) ;
 scalar_t__ Tick64 () ;
 int Unlock (int ) ;
 int WaitThread (int *,int) ;
 int WaitThreadInit (int *) ;
 TYPE_5__* ZeroMalloc (int) ;

bool ClientCheckServerCert(CONNECTION *c, bool *expired)
{
 CLIENT_AUTH *auth;
 X *x;
 CHECK_CERT_THREAD_PROC *p;
 THREAD *thread;
 CEDAR *cedar;
 bool ret;
 UINT64 start;

 if (c == ((void*)0))
 {
  return 0;
 }

 if (expired != ((void*)0))
 {
  *expired = 0;
 }

 auth = c->Session->ClientAuth;
 cedar = c->Cedar;

 if (auth->CheckCertProc == ((void*)0) && c->Session->LinkModeClient == 0)
 {

  return 1;
 }

 if (c->Session->LinkModeClient && c->Session->Link->CheckServerCert == 0)
 {

  return 1;
 }

 if (c->UseTicket)
 {

  if (CompareX(c->FirstSock->RemoteX, c->ServerX) == 0)
  {
   return 0;
  }
  else
  {
   return 1;
  }
 }

 x = CloneX(c->FirstSock->RemoteX);
 if (x == ((void*)0))
 {

  return 0;
 }

 if (CheckXDateNow(x))
 {

  if (c->Session->LinkModeClient == 0)
  {

   if (CheckSignatureByCa(cedar, x))
   {

    FreeX(x);
    return 1;
   }
  }
  else
  {

   if (CheckSignatureByCaLinkMode(c->Session, x))
   {

    FreeX(x);
    return 1;
   }
  }
 }

 if (c->Session->LinkModeClient)
 {
  if (CheckXDateNow(x))
  {
   Lock(c->Session->Link->lock);
   {
    if (c->Session->Link->ServerCert != ((void*)0))
    {
     if (CompareX(c->Session->Link->ServerCert, x))
     {
      Unlock(c->Session->Link->lock);

      FreeX(x);
      return 1;
     }
    }
   }
   Unlock(c->Session->Link->lock);
  }
  else
  {
   if (expired != ((void*)0))
   {
    *expired = 1;
   }
  }


  FreeX(x);
  return 0;
 }

 p = ZeroMalloc(sizeof(CHECK_CERT_THREAD_PROC));
 p->ServerX = x;
 p->CheckCertProc = auth->CheckCertProc;
 p->Connection = c;


 thread = NewThread(ClientCheckServerCertThread, p);
 WaitThreadInit(thread);


 start = Tick64();
 while (1)
 {
  if ((Tick64() - start) > CONNECTING_POOLING_SPAN)
  {

   start = Tick64();
   ClientUploadNoop(c);
  }
  if (p->UserSelected)
  {

   break;
  }
  WaitThread(thread, 500);
 }

 if (expired != ((void*)0))
 {
  *expired = p->Expired;
 }

 ret = p->Ok;
 FreeX(p->ServerX);
 Free(p);
 ReleaseThread(thread);

 return ret;
}
