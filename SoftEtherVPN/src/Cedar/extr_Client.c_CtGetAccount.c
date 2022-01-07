
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int AccountName; } ;
struct TYPE_14__ {int lock; int UpdateDateTime; int LastConnectDateTime; int CreateDateTime; TYPE_6__* ShortcutKey; int * ServerCert; int RetryOnServerCert; int CheckServerCert; int StartupAccount; int ClientAuth; TYPE_6__* ClientOption; } ;
struct TYPE_13__ {int AccountList; } ;
struct TYPE_12__ {int UpdateDateTime; int LastConnectDateTime; int CreateDateTime; TYPE_6__* ShortcutKey; int * ServerCert; int RetryOnServerCert; int CheckServerCert; int StartupAccount; int * ClientAuth; TYPE_6__* ClientOption; int AccountName; } ;
typedef TYPE_1__ RPC_CLIENT_GET_ACCOUNT ;
typedef int CLIENT_OPTION ;
typedef TYPE_2__ CLIENT ;
typedef TYPE_3__ ACCOUNT ;


 int CiFreeClientAuth (int *) ;
 int CiSetError (TYPE_2__*,int ) ;
 int * CloneX (int *) ;
 int Copy (TYPE_6__*,TYPE_6__*,int) ;
 int * CopyClientAuth (int ) ;
 int ERR_ACCOUNT_NOT_FOUND ;
 int Free (TYPE_6__*) ;
 int Lock (int ) ;
 int LockList (int ) ;
 int SHA1_SIZE ;
 TYPE_3__* Search (int ,TYPE_3__*) ;
 int UniStrCpy (int ,int,int ) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;
 void* ZeroMalloc (int) ;

bool CtGetAccount(CLIENT *c, RPC_CLIENT_GET_ACCOUNT *a)
{

 if (c == ((void*)0) || a == ((void*)0))
 {
  return 0;
 }

 LockList(c->AccountList);
 {
  ACCOUNT t, *r;


  t.ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
  UniStrCpy(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), a->AccountName);

  r = Search(c->AccountList, &t);
  if (r == ((void*)0))
  {

   UnlockList(c->AccountList);

   Free(t.ClientOption);
   CiSetError(c, ERR_ACCOUNT_NOT_FOUND);
   return 0;
  }

  Free(t.ClientOption);

  Lock(r->lock);
  {

   if (a->ClientOption != ((void*)0))
   {
    Free(a->ClientOption);
   }
   a->ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
   Copy(a->ClientOption, r->ClientOption, sizeof(CLIENT_OPTION));


   if (a->ClientAuth != ((void*)0))
   {
    CiFreeClientAuth(a->ClientAuth);
   }
   a->ClientAuth = CopyClientAuth(r->ClientAuth);

   a->StartupAccount = r->StartupAccount;

   a->CheckServerCert = r->CheckServerCert;
   a->RetryOnServerCert = r->RetryOnServerCert;
   a->ServerCert = ((void*)0);
   if (r->ServerCert != ((void*)0))
   {
    a->ServerCert = CloneX(r->ServerCert);
   }


   Copy(a->ShortcutKey, r->ShortcutKey, SHA1_SIZE);

   a->CreateDateTime = r->CreateDateTime;
   a->LastConnectDateTime = r->LastConnectDateTime;
   a->UpdateDateTime = r->UpdateDateTime;
  }
  Unlock(r->lock);

 }
 UnlockList(c->AccountList);

 return 1;
}
