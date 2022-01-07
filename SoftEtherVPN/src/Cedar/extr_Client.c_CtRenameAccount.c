
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int AccountName; } ;
struct TYPE_15__ {int lock; TYPE_6__* ClientOption; int * ClientSession; } ;
struct TYPE_14__ {int AccountList; } ;
struct TYPE_13__ {int NewName; int OldName; } ;
typedef TYPE_1__ RPC_RENAME_ACCOUNT ;
typedef int CLIENT_OPTION ;
typedef TYPE_2__ CLIENT ;
typedef TYPE_3__ ACCOUNT ;


 int CLog (TYPE_2__*,char*,int ,int ) ;
 int CiNotify (TYPE_2__*) ;
 int CiSaveConfigurationFile (TYPE_2__*) ;
 int CiSetError (TYPE_2__*,int ) ;
 int ERR_ACCOUNT_ACTIVE ;
 int ERR_ACCOUNT_ALREADY_EXISTS ;
 int ERR_ACCOUNT_NOT_FOUND ;
 int ERR_INVALID_VALUE ;
 int Free (TYPE_6__*) ;
 int Lock (int ) ;
 int LockList (int ) ;
 TYPE_3__* Search (int ,TYPE_3__*) ;
 int Sort (int ) ;
 scalar_t__ UniStrCmp (int ,int ) ;
 int UniStrCpy (int ,int,int ) ;
 scalar_t__ UniStrLen (int ) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;
 void* ZeroMalloc (int) ;

bool CtRenameAccount(CLIENT *c, RPC_RENAME_ACCOUNT *rename, bool inner)
{
 bool ret;

 if (c == ((void*)0) || rename == ((void*)0))
 {
  return 0;
 }


 ret = 0;

 if (UniStrCmp(rename->NewName, rename->OldName) == 0)
 {

  return 1;
 }

 LockList(c->AccountList);
 {
  ACCOUNT t, *r, *r2;

  if (UniStrLen(rename->NewName) == 0)
  {

   CiSetError(c, ERR_INVALID_VALUE);
   UnlockList(c->AccountList);
   return 0;
  }


  t.ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
  UniStrCpy(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), rename->OldName);

  r = Search(c->AccountList, &t);
  if (r == ((void*)0))
  {

   UnlockList(c->AccountList);

   Free(t.ClientOption);
   CiSetError(c, ERR_ACCOUNT_NOT_FOUND);
   return 0;
  }

  Free(t.ClientOption);


  t.ClientOption = ZeroMalloc(sizeof(CLIENT_OPTION));
  UniStrCpy(t.ClientOption->AccountName, sizeof(t.ClientOption->AccountName), rename->NewName);

  r2 = Search(c->AccountList, &t);
  if (r2 != ((void*)0))
  {

   UnlockList(c->AccountList);

   Free(t.ClientOption);
   CiSetError(c, ERR_ACCOUNT_ALREADY_EXISTS);
   return 0;
  }

  Free(t.ClientOption);

  Lock(r->lock);
  {

   if (r->ClientSession != ((void*)0))
   {

    Unlock(r->lock);
    UnlockList(c->AccountList);
    CiSetError(c, ERR_ACCOUNT_ACTIVE);

    return 0;
   }


   UniStrCpy(r->ClientOption->AccountName, sizeof(r->ClientOption->AccountName),
    rename->NewName);

   CLog(c, "LC_RENAME_ACCOUNT", rename->OldName, rename->NewName);

   ret = 1;
  }
  Unlock(r->lock);

  Sort(c->AccountList);

 }
 UnlockList(c->AccountList);

 CiSaveConfigurationFile(c);

 CiNotify(c);

 return ret;
}
