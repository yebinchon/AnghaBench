
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_8__ ;
typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_16__ ;
typedef struct TYPE_22__ TYPE_13__ ;


struct TYPE_29__ {int AccountName; } ;
struct TYPE_28__ {int AccountName; } ;
struct TYPE_27__ {int UpdateDateTime; int CreateDateTime; TYPE_7__* ShortcutKey; int ServerCert; int RetryOnServerCert; int CheckServerCert; int StartupAccount; TYPE_7__* ClientOption; int ClientAuth; int lock; } ;
struct TYPE_26__ {int AccountList; } ;
struct TYPE_25__ {TYPE_8__* ClientOption; TYPE_8__* ShortcutKey; TYPE_16__* ServerCert; int RetryOnServerCert; int CheckServerCert; int StartupAccount; TYPE_13__* ClientAuth; } ;
struct TYPE_24__ {int is_compatible_bit; } ;
struct TYPE_23__ {int is_compatible_bit; } ;
struct TYPE_22__ {scalar_t__ AuthType; int * ClientK; TYPE_1__* ClientX; } ;
typedef TYPE_2__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef int CLIENT_OPTION ;
typedef TYPE_3__ CLIENT ;
typedef TYPE_4__ ACCOUNT ;


 scalar_t__ CLIENT_AUTHTYPE_CERT ;
 int CLog (TYPE_3__*,char*,int ) ;
 int CiNormalizeAccountVLan (TYPE_3__*) ;
 int CiNotify (TYPE_3__*) ;
 int CiSaveConfigurationFile (TYPE_3__*) ;
 int CiSetError (TYPE_3__*,int ) ;
 int CloneX (TYPE_16__*) ;
 int Copy (TYPE_7__*,TYPE_8__*,int) ;
 int CopyClientAuth (TYPE_13__*) ;
 int ERR_ACCOUNT_ALREADY_EXISTS ;
 int ERR_INVALID_VALUE ;
 int ERR_NOT_RSA_1024 ;
 int Free (TYPE_7__*) ;
 int Insert (int ,TYPE_4__*) ;
 scalar_t__ IsZero (TYPE_8__*,int) ;
 int LockList (int ) ;
 int NewLock () ;
 int Rand (TYPE_7__*,int) ;
 int SHA1_SIZE ;
 TYPE_4__* Search (int ,TYPE_4__*) ;
 int SystemTime64 () ;
 int UniStrCpy (int ,int,int ) ;
 scalar_t__ UniStrLen (int ) ;
 int UnlockList (int ) ;
 void* ZeroMalloc (int) ;

bool CtCreateAccount(CLIENT *c, RPC_CLIENT_CREATE_ACCOUNT *a, bool inner)
{

 if (c == ((void*)0) || a == ((void*)0))
 {
  return 0;
 }



 LockList(c->AccountList);
 {
  ACCOUNT t, *ret, *new_account;
  t.ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
  UniStrCpy(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName),
   a->ClientOption->AccountName);

  ret = Search(c->AccountList, &t);
  if (ret != ((void*)0))
  {

   UnlockList(c->AccountList);
   Free(t.ClientOption);

   CiSetError(c, ERR_ACCOUNT_ALREADY_EXISTS);

   return 0;
  }

  Free(t.ClientOption);

  if (UniStrLen(a->ClientOption->AccountName) == 0)
  {

   UnlockList(c->AccountList);
   CiSetError(c, ERR_INVALID_VALUE);
   return 0;
  }

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


  new_account = ZeroMalloc(sizeof(ACCOUNT));
  new_account->lock = NewLock();


  new_account->ClientAuth = CopyClientAuth(a->ClientAuth);


  new_account->ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
  Copy(new_account->ClientOption, a->ClientOption, sizeof(CLIENT_OPTION));

  new_account->StartupAccount = a->StartupAccount;

  new_account->CheckServerCert = a->CheckServerCert;
  new_account->RetryOnServerCert = a->RetryOnServerCert;
  if (a->ServerCert != ((void*)0))
  {
   new_account->ServerCert = CloneX(a->ServerCert);
  }


  if (IsZero(a->ShortcutKey, SHA1_SIZE))
  {
   Rand(new_account->ShortcutKey, SHA1_SIZE);
  }
  else
  {
   Copy(new_account->ShortcutKey, a->ShortcutKey, SHA1_SIZE);
  }

  new_account->CreateDateTime = new_account->UpdateDateTime = SystemTime64();


  Insert(c->AccountList, new_account);

  CLog(c, "LC_NEW_ACCOUNT", a->ClientOption->AccountName);
 }
 UnlockList(c->AccountList);

 CiNormalizeAccountVLan(c);

 CiSaveConfigurationFile(c);

 CiNotify(c);

 return 1;
}
