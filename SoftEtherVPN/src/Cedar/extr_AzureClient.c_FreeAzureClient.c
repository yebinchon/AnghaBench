
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int Halt; int Lock; int Event; int MainThread; TYPE_1__* CurrentSock; } ;
struct TYPE_7__ {int ref; } ;
typedef TYPE_1__ SOCK ;
typedef TYPE_2__ AZURE_CLIENT ;


 int AddRef (int ) ;
 int DeleteLock (int ) ;
 int Disconnect (TYPE_1__*) ;
 int Free (TYPE_2__*) ;
 int INFINITE ;
 int Lock (int ) ;
 int ReleaseEvent (int ) ;
 int ReleaseSock (TYPE_1__*) ;
 int ReleaseThread (int ) ;
 int Set (int ) ;
 int Unlock (int ) ;
 int WaitThread (int ,int ) ;

void FreeAzureClient(AZURE_CLIENT *ac)
{
 SOCK *disconnect_sock = ((void*)0);

 if (ac == ((void*)0))
 {
  return;
 }

 ac->Halt = 1;

 Lock(ac->Lock);
 {
  if (ac->CurrentSock != ((void*)0))
  {
   disconnect_sock = ac->CurrentSock;

   AddRef(disconnect_sock->ref);
  }
 }
 Unlock(ac->Lock);

 if (disconnect_sock != ((void*)0))
 {
  Disconnect(disconnect_sock);
  ReleaseSock(disconnect_sock);
 }

 Set(ac->Event);


 WaitThread(ac->MainThread, INFINITE);
 ReleaseThread(ac->MainThread);

 ReleaseEvent(ac->Event);

 DeleteLock(ac->Lock);

 Free(ac);
}
