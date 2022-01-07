
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_24__ {int AccountName; } ;
struct TYPE_23__ {int lock; int UpdateDateTime; int * ServerCert; int RetryOnServerCert; int CheckServerCert; int StartupAccount; TYPE_7__* ClientOption; int ClientAuth; int * ClientSession; } ;
struct TYPE_22__ {int AccountList; } ;
struct TYPE_21__ {TYPE_13__* ServerCert; int RetryOnServerCert; int CheckServerCert; int StartupAccount; TYPE_12__* ClientOption; TYPE_10__* ClientAuth; } ;
struct TYPE_20__ {int is_compatible_bit; } ;
struct TYPE_19__ {int is_compatible_bit; } ;
struct TYPE_18__ {int AccountName; } ;
struct TYPE_17__ {scalar_t__ AuthType; int * ClientK; TYPE_1__* ClientX; } ;
typedef TYPE_2__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef int CLIENT_OPTION ;
typedef TYPE_3__ CLIENT ;
typedef TYPE_4__ ACCOUNT ;


 scalar_t__ CLIENT_AUTHTYPE_CERT ;
 int CiFreeClientAuth (int ) ;
 int CiNotify (TYPE_3__*) ;
 int CiSaveConfigurationFile (TYPE_3__*) ;
 int CiSetError (TYPE_3__*,int ) ;
 int * CloneX (TYPE_13__*) ;
 int Copy (TYPE_7__*,TYPE_12__*,int) ;
 int CopyClientAuth (TYPE_10__*) ;
 int ERR_ACCOUNT_ACTIVE ;
 int ERR_ACCOUNT_NOT_FOUND ;
 int ERR_NOT_RSA_1024 ;
 int Free (TYPE_7__*) ;
 int FreeX (int *) ;
 int Lock (int ) ;
 int LockList (int ) ;
 TYPE_4__* Search (int ,TYPE_4__*) ;
 int SystemTime64 () ;
 int UniStrCpy (int ,int,int ) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;
 void* ZeroMalloc (int) ;

bool CtSetAccount(CLIENT *c, RPC_CLIENT_CREATE_ACCOUNT *a, bool inner)
{

 if (c == ((void*)0) || a == ((void*)0))
 {
  return 0;
 }



 LockList(c->AccountList);
 {
  ACCOUNT t, *ret;
  t.ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
  UniStrCpy(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName),
   a->ClientOption->AccountName);

  ret = Search(c->AccountList, &t);
  if (ret == ((void*)0))
  {

   UnlockList(c->AccountList);
   Free(t.ClientOption);

   CiSetError(c, ERR_ACCOUNT_NOT_FOUND);

   return 0;
  }
  Free(t.ClientOption);

  if (a->ClientAuth->AuthType == CLIENT_AUTHTYPE_CERT)
  {
   if (a->ClientAuth->ClientX == ((void*)0) ||
    a->ClientAuth->ClientX->is_compatible_bit == 0 ||
    a->ClientAuth->ClientK == ((void*)0))
   {

    UnlockList(c->AccountList);
    CiSetError(c, ERR_NOT_RSA_1024);
    return 0;
   }
  }

  if (a->ServerCert != ((void*)0) && a->ServerCert->is_compatible_bit == 0)
  {

   UnlockList(c->AccountList);
   CiSetError(c, ERR_NOT_RSA_1024);
   return 0;
  }

  Lock(ret->lock);
  {
   CiFreeClientAuth(ret->ClientAuth);


   ret->ClientAuth = CopyClientAuth(a->ClientAuth);


   Free(ret->ClientOption);


   ret->ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
   Copy(ret->ClientOption, a->ClientOption, sizeof(CLIENT_OPTION));

   ret->StartupAccount = a->StartupAccount;

   ret->CheckServerCert = a->CheckServerCert;
   ret->RetryOnServerCert = a->RetryOnServerCert;

   if (a->ServerCert != ((void*)0))
   {
    if (ret->ServerCert != ((void*)0))
    {
     FreeX(ret->ServerCert);
    }
    ret->ServerCert = CloneX(a->ServerCert);
   }
   else
   {
    if (ret->ServerCert != ((void*)0))
    {
     FreeX(ret->ServerCert);
    }
    ret->ServerCert = 0;
   }

   ret->UpdateDateTime = SystemTime64();
  }
  Unlock(ret->lock);
 }
 UnlockList(c->AccountList);

 CiSaveConfigurationFile(c);

 CiNotify(c);

 return 1;
}
