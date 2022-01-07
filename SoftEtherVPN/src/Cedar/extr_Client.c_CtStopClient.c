
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_14__ {int Halt; int AccountList; } ;
struct TYPE_13__ {int lock; TYPE_1__* ClientSession; } ;
struct TYPE_12__ {int ref; } ;
typedef TYPE_1__ SESSION ;
typedef TYPE_2__ ACCOUNT ;


 int AddRef (int ) ;
 int CiFreeKeep (TYPE_3__*) ;
 int CiFreeSaver (TYPE_3__*) ;
 int CiStopRpcServer (TYPE_3__*) ;
 int CncExit () ;
 int CtReleaseClient (TYPE_3__*) ;
 int Free (TYPE_2__**) ;
 size_t LIST_NUM (int ) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int ReleaseSession (TYPE_1__*) ;
 int StopSession (TYPE_1__*) ;
 TYPE_2__** ToArray (int ) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;
 TYPE_3__* client ;

void CtStopClient()
{
 UINT i, num;
 ACCOUNT **account_list;
 if (client == ((void*)0))
 {

  return;
 }


 client->Halt = 1;


 CiStopRpcServer(client);


 CncExit();


 CiFreeKeep(client);


 LockList(client->AccountList);
 {
  num = LIST_NUM(client->AccountList);
  account_list = ToArray(client->AccountList);
 }
 UnlockList(client->AccountList);

 for (i = 0;i < num;i++)
 {
  ACCOUNT *a = account_list[i];
  SESSION *s = ((void*)0);

  Lock(a->lock);
  {
   if (a->ClientSession != ((void*)0))
   {
    s = a->ClientSession;
    AddRef(s->ref);
   }
  }
  Unlock(a->lock);

  if (s != ((void*)0))
  {
   StopSession(s);
   ReleaseSession(s);
   Lock(a->lock);
   {
    if (a->ClientSession != ((void*)0))
    {
     ReleaseSession(a->ClientSession);
     a->ClientSession = ((void*)0);
    }
   }
   Unlock(a->lock);
  }
 }

 Free(account_list);


 CiFreeSaver(client);


 CtReleaseClient(client);
 client = ((void*)0);
}
