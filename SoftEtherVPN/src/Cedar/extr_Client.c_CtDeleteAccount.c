
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_19__ {int AccountName; } ;
struct TYPE_18__ {int lock; int * ClientSession; TYPE_4__* ClientOption; } ;
struct TYPE_17__ {int AccountList; scalar_t__ Halt; } ;
struct TYPE_16__ {int AccountName; } ;
typedef TYPE_1__ RPC_CLIENT_DELETE_ACCOUNT ;
typedef int CLIENT_OPTION ;
typedef TYPE_2__ CLIENT ;
typedef TYPE_3__ ACCOUNT ;


 int CLog (TYPE_2__*,char*,int ) ;
 int CiFreeAccount (TYPE_3__*) ;
 int CiNotify (TYPE_2__*) ;
 int CiSaveConfigurationFile (TYPE_2__*) ;
 int CiSetError (TYPE_2__*,int ) ;
 int Delete (int ,TYPE_3__*) ;
 int ERR_ACCOUNT_ACTIVE ;
 int ERR_ACCOUNT_NOT_FOUND ;
 int ERR_INTERNAL_ERROR ;
 int Free (TYPE_4__*) ;
 int Lock (int ) ;
 int LockList (int ) ;
 TYPE_3__* Search (int ,TYPE_3__*) ;
 int UniStrCpy (int ,int,int ) ;
 int Unlock (int ) ;
 int UnlockList (int ) ;
 TYPE_4__* ZeroMalloc (int) ;

bool CtDeleteAccount(CLIENT *c, RPC_CLIENT_DELETE_ACCOUNT *a, bool inner)
{
 bool ret;

 if (c == ((void*)0) || a == ((void*)0))
 {
  return 0;
 }

 ret = 0;

 if (c->Halt)
 {

  CiSetError(c, ERR_INTERNAL_ERROR);
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

   if (r->ClientSession != ((void*)0))
   {

    Unlock(r->lock);
    UnlockList(c->AccountList);
    CiSetError(c, ERR_ACCOUNT_ACTIVE);

    return 0;
   }


   Delete(c->AccountList, r);
  }
  Unlock(r->lock);


  CiFreeAccount(r);

  CLog(c, "LC_DELETE_ACCOUNT", a->AccountName);
  ret = 1;

 }
 UnlockList(c->AccountList);

 if (ret)
 {
  CiSaveConfigurationFile(c);
  CiNotify(c);
 }

 return ret;
}
